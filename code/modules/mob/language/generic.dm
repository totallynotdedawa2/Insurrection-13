// Noise "language", for audible emotes.
/datum/language/noise
	name = "Noise"
	desc = "Noises"
	key = ""
	flags = RESTRICTED|NONGLOBAL|INNATE|NO_TALK_MSG|NO_STUTTER

/datum/language/noise/format_message(message, verb)
	return "<span class='message'><span class='[colour]'>[message]</span></span>"

/datum/language/noise/format_message_plain(message, verb)
	return message

/datum/language/noise/format_message_radio(message, verb)
	return "<span class='[colour]'>[message]</span>"

/datum/language/noise/get_talkinto_msg_range(message)
	// if you make a loud noise (screams etc), you'll be heard from 4 tiles over instead of two
	return (copytext(message, length(message)) == "!") ? 4 : 2

// 'basic' language; spoken by default.
/datum/language/common
	name = LANGUAGE_GALCOM
	desc = "The common galactic tongue."
	speech_verb = "says"
	whisper_verb = "whispers"
	key = "0"
	flags = RESTRICTED
	syllables = list("blah","blah","blah","bleh","meh","neh","nah","wah")

//TODO flag certain languages to use the mob-type specific say_quote and then get rid of these.
/datum/language/common/get_spoken_verb(var/msg_end)
	switch(msg_end)
		if("!")
			return pick("exclaims","shouts","yells") //TODO: make the basic proc handle lists of verbs.
		if("?")
			return ask_verb
	return speech_verb

// Galactic common languages (systemwide accepted standards).
/datum/language/trader
	name = "Tradeband"
	desc = "Maintained by the various trading cartels in major systems, this elegant, structured language is used for bartering and bargaining."
	speech_verb = "enunciates"
	colour = "say_quote"
	key = "2"
	space_chance = 100
	syllables = list("lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipiscing", "elit",
					 "sed", "do", "eiusmod", "tempor", "incididunt", "ut", "labore", "et", "dolore",
					 "magna", "aliqua", "ut", "enim", "ad", "minim", "veniam", "quis", "nostrud",
					 "exercitation", "ullamco", "laboris", "nisi", "ut", "aliquip", "ex", "ea", "commodo",
					 "consequat", "duis", "aute", "irure", "dolor", "in", "reprehenderit", "in",
					 "voluptate", "velit", "esse", "cillum", "dolore", "eu", "fugiat", "nulla",
					 "pariatur", "excepteur", "sint", "occaecat", "cupidatat", "non", "proident", "sunt",
					 "in", "culpa", "qui", "officia", "deserunt", "mollit", "anim", "id", "est", "laborum")

// Criminal language.
/datum/language/gutter
	name = "Gutter"
	desc = "Much like Standard, this crude pidgin tongue descended from numerous languages and serves as Tradeband for criminal elements."
	speech_verb = "growls"
	colour = "rough"
	key = "3"
	syllables = list ("gra","ba","ba","breh","bra","rah","dur","ra","ro","gro","go","ber","bar","geh","heh", "gra")

/datum/language/sign
	name = LANGUAGE_SIGN
	desc = "A sign language commonly used for those who are deaf or mute."
	signlang_verb = list("gestures")
	colour = "say_quote"
	key = "s"
	flags = SIGNLANG | NO_STUTTER | NONVERBAL
<<<<<<< Updated upstream
=======

/datum/language/english
	name = "English"
	desc = "One of the most common languages on Earth and the colonies, and standard language of the UNSC."
	key = "1"
	syllables = list("blah","blah","blah","bleh","meh","neh","nah","wah")

/datum/language/mandarin
	name = "Mandarin"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"a","ai","an","ang","ao","ba",\
		"bai","ban","bang","bao","bei","ben",\
		"beng","bi","bian","biao","bie",\
		"bing","bo","bu","ca","cai","can",\
		"cang","cao","ce","cei","cen","ceng",\
		"cha","chai","chan","chang","chao","che",\
		"chen","cheng","chi","chong","chou","chu",\
		"chua","chuai","chuan","chuang","chui","chun",\
		"chuo","ci","cong","cou","cu","cuan",\
		"cui","cun","cuo","da","dai","dan",\
		"dang","dao","de","dei","den",\
		"deng","di","dian","diao","die","ding",\
		"diu","dong","dou","du","duan","dui",\
		"dun","duo","e","ei","en","er",\
		"fa","fan","fang","fei","fen","feng",\
		"fo","fou","fu","ga","gai","gan",\
		"gang","gao","ge","gei","gen",\
		"geng","gong","gou","gu","gua","guai",\
		"guan","guang","gui","gun","guo","ha",\
		"hai","han","hang","hao","he","hei",\
		"hen","heng","hm","hng","hong","hou",\
		"hu","hua","huai","huan","huang","hui",\
		"hun","huo","ji","jia","jian","jiang",\
		"jiao","jie","jin","jing","jiong","jiu",\
		"ju","juan","jue","jun","ka","kai",\
		"kan","kang","kao","ke","kei","ken",\
		"keng","kong","kou","ku","kua","kuai",\
		"kuan","kuang","kui","kun","kuo","lv",\
		"la","lai","lan","lang","lao","le",\
		"lve","lei","leng","li","lia","lian",\
		"liang","liao","lie","lin","ling","liu",\
		"long","lou","lu","luan","lun","luo",\
		"m","ma","mai","man","mang","mao",\
		"me","mei","men","meng","mi","mian",\
		"miao","mie","min","ming","miu","mo",\
		"mou","mu","na","nai",\
		"nan","nang","nao","ne",\
		"nei","nen","neng","ni","nian",\
		"niang","niao","nie","nin","ning","niu",\
		"nong","nou","nu","nuan","nuo","o",\
		"ou","pa","pai","pan","pang","pao",\
		"pei","pen","peng","pi","pian","piao",\
		"pie","pin","ping","po","pou","pu",\
		"qi","qia","qian","qiang","qiao","qie",\
		"qin","qing","qiong","qiu","qu","quan",\
		"que","qun","ran","rang","rao","re",\
		"ren","reng","ri","rong","rou","ru",\
		"rua","ruan","rui","run","ruo","sa",\
		"sai","san","sang","sao","se","sei",\
		"sen","seng","sha","shai","shan","shang",\
		"shao","she","shei","shen","sheng","shi",\
		"shou","shu","shua","shuai","shuan","shuang",\
		"shui","shun","shuo","si","song","sou",\
		"su","suan","sui","sun","suo","ta",\
		"tai","tan","tang","tao","te","teng",\
		"ti","tian","tiao","tie","ting","tong",\
		"tou","tu","tuan","tui","tun","tuo",\
		"wa","wai","wan","wang","wei","wen",\
		"weng","wo","wu","xi","xia","xian",\
		"xiang","xiao","xie","xin","xing","xiong",\
		"xiu","xu","xuan","xue","xun","ya",\
		"yan","yang","yao","ye","yi","yin",\
		"ying","yong","you","yu","yuan","yue",\
		"yun","za","zai","zan","zang","zao",\
		"ze","zei","zen","zeng","zha","zhai",\
		"zhan","zhang","zhao","zhe","zhei","zhen",\
		"zheng","zhi","zhong","zhou","zhu","zhua",\
		"zhuai","zhuan","zhuang","zhui","zhun","zhuo",\
		"zi","zong","zou","zuan","zui","zun",\
		"zuo","zu")

/datum/language/german
	name = "German"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"abe","and","auf","aus","ann",\
		"ber","che","d�s","er�","ere",\
		"die","ein","eit","end","ver",\
		"ese","ine","r�t","m�ll","ung",\
		"il�","men","mit","und","bit",\
		"nen","nic","sch","ter","ten",\
		"sen","sie","�te",\
		"ige","ich","der","sch","den","schloss","nte",\
		"ach","ben","cht","sch","lle","schlus")

/datum/language/french
	name = "French"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"ais","ans","ant","ati","lus","men",\
		"ava","av�","cha","che","com","con",\
		"dan","des","ell","eme","ent","est",\
		"eur","fai","bien","eta","mai","ver",\
		"nte","ont","our","ous","out","une",\
		"ouv","par","pas","plu","pou","que",\
		"res","sur","tai","tio","tou","tr�",\
		"mme","omm","ur�","son","eux","ion",\
		"l�s","ain","ait","vou","lle","ire")

/datum/language/spanish
	name = "Spanish"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"ac�","ado","ant","ar�","ci�",\
		"com","des","dos","ent","er�",\
		"ero","est","ver","i�n","per",\
		"l�s","m�n","p�r","por","r�s",\
		"t�n","tr�","un�",\
		"que","ad�","con","ste","i�n","st�",\
		"nte","ido","i�n","i�r","los","nto")

/datum/language/italian
	name = "Italian"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"ale","all","anc","and","ant","are",\
		"ato","att","che","chi","com","con",\
		"del","ell","ent","era","ere","ess",\
		"est","ett","gli","ion","men",\
		"ono","per","que","son","sta","sto",\
		"tat","tra","tto","non","ver",\
		"nte","nti","nto","olo","one",\
		"una","lla","sta","zio")

/datum/language/turkish
	name = "Turkish"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"ada","ama","ara","ard","ari","asi",\
		"bil","bir","cin","edi","eni","ere",\
		"eri","ind","i�i","ile","ili","lan",\
		"lar","ldu","ler","mak","man","ist",\
		"nde","nla","ola","old","onu","usm",\
		"rin","var","ver","yor","og","bag",\
		"deg","sak","yat","h�l","kaf","bud",\
		"bir",\
		"rdi","�n","aba","hat","sin","rim","mak")

/datum/language/indonesian
	name = "Indonesian"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"ada","aka","ala","ama","ana","and",\
		"ang","any","apa","ara","ari","ata",\
		"atu","aya","bah","ber","dak","dal",\
		"dan","dar","den","dia","eka","ela",\
		"emb","ena","eng","era","ere","ert",\
		"gan","han","har","ida","ika","ing",\
		"ini","kan","lah","lam","lan","mem",\
		"men","mer","ntu","des","ido","ada",\
		"nya","pat","per","ran","rek","say",\
		"tan","tel","ter","tid","tuk","unt",\
		"yan","ang","kan","dan","nga","yan",\
		"men","eng","ber","aya","nya","ala",\
		"gan","say","ing","ada","nda","aka",\
		"ntu","ela","lah","per","apa","and",\
		"dia","ata","ari","unt","tid","eka",\
		"tuk","ida","era","dak","mem","ara",\
		"mer","pat","den","ter","ere","ena",\
		"tan","dal","ran","lam","dar","any",\
		"rek","ika","ngg","emb","lan","ama",\
		"tel","ini","ana","har","han","ert",\
		"bah","atu","ci�","aci","las","com",\
		"ste","res","ten","ier","ver","dos",\
		"ah","ak","al","ngg","nga","nda",\
		"am","an","ap","ar","at","ba",\
		"be","da","di","el","em","en",\
		"er","ga","ha","ia","ik","in",\
		"ka","ke","la","ma","me","na",\
		"nd","ng","nt","pa","pe","ra",\
		"ri","sa","se","ta","te","ti",\
		"tu","uk","un","ya","an","da",\
		"ng","ka","er","ya","en","la",\
		"me","di","ak","at","ar","ta",\
		"sa","se","ah","in","ga","pa",\
		"tu","ra","al","be","te","ti",\
		"ba","ma","un","am","em","el",\
		"ke","ia","ha","ri","na","ap",\
		"nt","uk","pe","ik","nd")

/datum/language/swedish
	name = "Swedish"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"ade","all","and","ans","ara","att",\
		"den","der","det","era","ett","f�r",\
		"gen","han","ill","ing","int","jag",\
		"kan","lig","lla","lle","h�r","m�r",\
		"h�r","m�r","med","men","nde","nge",\
		"nin","nne","nte","och","sam","som",\
		"sta","ste","slu")

/datum/language/danish
	name = "Danish"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"age","and","ang","den","der","det",\
		"ede","end","ere","for","gen","ger",\
		"get","han","hav","hen","ige","igt",\
		"ikk","ill","ind","ing","jeg","kke",\
		"ler","lig","lle","med","men","mme",\
		"nde","nge","nne","ord","d�r","b�r",\
		"dan","hvor","har")

/datum/language/norwegian
	name = "Norwegian"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"all","ans","are","dde","den","der",\
		"det","ell","end","ene","enn","ent",\
		"ere","ett","f�r","gen","had","han",\
		"hen","ikk","ing","itt","jeg","kan",\
		"kke","ler","lig","lle","med","men",\
		"mme","nde","nge","nne","f�s","�rn",\
		"haak","b�h","d�h","d�r","b�r")

/datum/language/icelandic
	name = "Icelandic"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"all","and","ann","ega","ein","eir",\
		"ekk","enn","era","fyr","gur","haf",\
		"han","ing","inn","ins","kki","leg",\
		"me�","ndi","nna","nni","num","rir",\
		"sem","sta","til","tur","var","ver",\
		"vi�","�ur","�a�","�ei")

/datum/language/finnish
	name = "Finnish"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"aan","aik","ain","ais","all","ast",\
		"een","ell","ett","h�n","ane",\
		"ine","inu","ise","isi","ist",\
		"it�","ksi","lis","lla","lle","lli",\
		"ll�","min","nen","ole","oli","sen",\
		"sin","ssa","sta","sti","ten",\
		"tta","t��","vat","voi",\
		"utt","taa","itt","ikk","�n","l�","v�","tt�","le")

/datum/language/japanese
	name = "Japanese"
	desc = "A language spoken by one of the early space exploring cultures on Earth."
	colour = "solcom"
	key = "2"
	syllables = list(\
		"a","i","u","e","o","ka",\
		"ki","ku","ke","ko","kya","kyu",\
		"kyo","sa","shi","su","se","so",\
		"sha","shu","sho","ta","chi","tsu",\
		"te","to","cha","chu","cho","na",\
		"ni","nu","ne","no","nya","nyu",\
		"nyo","ha","hi","fu","he","ho",\
		"hya","hyu","hyo","ma","mi","mu",\
		"me","mo","mya","myu","myo","ya",\
		"i","yu","e","yo","ra","ri",\
		"ru","re","ro","rya","ryu","ryo",\
		"wa","i","u","e","o","n",\
		"ga","gi","gu","ge","go","gya",\
		"gyu","gyo","za","ji","zu","ze",\
		"zo","jo","ja","ju","da","ji",\
		"zu","de","do","ja","ju","jo",\
		"ba","bi","bu","be","bo","bya",\
		"byu","byo","pa","pi","pu","pe",\
		"po","pya","pyu","py")
>>>>>>> Stashed changes
