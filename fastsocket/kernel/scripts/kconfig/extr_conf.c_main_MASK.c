#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  S_DEF_USER ; 
 char* FUNC0 (char*) ; 
#define  ask_all 137 
#define  ask_new 136 
#define  ask_silent 135 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conf_cnt ; 
 scalar_t__ FUNC4 () ; 
 char* FUNC5 () ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  def_default ; 
 int /*<<< orphan*/  def_mod ; 
 int /*<<< orphan*/  def_no ; 
 int /*<<< orphan*/  def_random ; 
 int /*<<< orphan*/  def_yes ; 
 char* defconfig_file ; 
#define  dont_ask 134 
#define  dont_ask_dont_tell 133 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC15 (char*) ; 
 int FUNC16 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct timeval*,int /*<<< orphan*/ *) ; 
 int input_mode ; 
 scalar_t__ FUNC18 (int) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int return_value ; 
 int /*<<< orphan*/ * rootEntry ; 
 int /*<<< orphan*/  rootmenu ; 
#define  set_default 132 
#define  set_mod 131 
#define  set_no 130 
#define  set_random 129 
#define  set_yes 128 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 
 scalar_t__ FUNC22 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int sync_kconfig ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int valid_stdin ; 

int FUNC24(int ac, char **av)
{
	int opt;
	const char *name;
	struct stat tmpstat;

	FUNC20(LC_ALL, "");
	FUNC1(PACKAGE, LOCALEDIR);
	FUNC23(PACKAGE);

 	while ((opt = FUNC16(ac, av, "osbBdD:nmyrh")) != -1) {
		switch (opt) {
		case 'o':
			input_mode = ask_silent;
			break;
		case 's':
			input_mode = ask_silent;
			sync_kconfig = 1;
			break;
		case 'b':
			input_mode = dont_ask;
			break;
		case 'B':
			input_mode = dont_ask_dont_tell;
			break;
		case 'd':
			input_mode = set_default;
			break;
		case 'D':
			input_mode = set_default;
			defconfig_file = optarg;
			break;
		case 'n':
			input_mode = set_no;
			break;
		case 'm':
			input_mode = set_mod;
			break;
		case 'y':
			input_mode = set_yes;
			break;
		case 'r':
		{
			struct timeval now;
			unsigned int seed;

			/*
			 * Use microseconds derived seed,
			 * compensate for systems where it may be zero
			 */
			FUNC17(&now, NULL);

			seed = (unsigned int)((now.tv_sec + 1) * (now.tv_usec + 1));
			FUNC21(seed);

			input_mode = set_random;
			break;
		}
		case 'h':
			FUNC19(FUNC0("See README for usage info\n"));
			FUNC13(0);
			break;
		default:
			FUNC14(stderr, "%s", FUNC0("See README for usage info\n"));
			FUNC13(1);
		}
	}
	if (ac == optind) {
		FUNC19(FUNC0("%s: Kconfig file missing\n"), av[0]);
		FUNC13(1);
	}
	name = av[optind];
	FUNC7(name);
	//zconfdump(stdout);
	if (sync_kconfig) {
		name = FUNC5();
		if (FUNC22(name, &tmpstat)) {
			FUNC14(stderr, FUNC0("***\n"
				"*** You have not yet configured your kernel!\n"
				"*** (missing kernel config file \"%s\")\n"
				"***\n"
				"*** Please run some configurator (e.g. \"make oldconfig\" or\n"
				"*** \"make menuconfig\" or \"make xconfig\").\n"
				"***\n"), name);
			FUNC13(1);
		}
	}

	switch (input_mode) {
	case set_default:
		if (!defconfig_file)
			defconfig_file = FUNC6();
		if (FUNC8(defconfig_file)) {
			FUNC19(FUNC0("***\n"
				"*** Can't find default configuration \"%s\"!\n"
				"***\n"), defconfig_file);
			FUNC13(1);
		}
		break;
	case ask_silent:
	case ask_all:
	case ask_new:
	case dont_ask:
	case dont_ask_dont_tell:
		FUNC8(NULL);
		break;
	case set_no:
	case set_mod:
	case set_yes:
	case set_random:
		name = FUNC15("KCONFIG_ALLCONFIG");
		if (name && !FUNC22(name, &tmpstat)) {
			FUNC9(name, S_DEF_USER);
			break;
		}
		switch (input_mode) {
		case set_no:	 name = "allno.config"; break;
		case set_mod:	 name = "allmod.config"; break;
		case set_yes:	 name = "allyes.config"; break;
		case set_random: name = "allrandom.config"; break;
		default: break;
		}
		if (!FUNC22(name, &tmpstat))
			FUNC9(name, S_DEF_USER);
		else if (!FUNC22("all.config", &tmpstat))
			FUNC9("all.config", S_DEF_USER);
		break;
	default:
		break;
	}

	if (sync_kconfig) {
		if (FUNC4()) {
			name = FUNC15("KCONFIG_NOSILENTUPDATE");
			if (name && *name) {
				FUNC14(stderr,
					"%s", FUNC0("\n*** Kernel configuration requires explicit update.\n\n"));
				return 1;
			}
		}
		valid_stdin = FUNC18(0) && FUNC18(1) && FUNC18(2);
	}

	switch (input_mode) {
	case set_no:
		FUNC10(def_no);
		break;
	case set_yes:
		FUNC10(def_yes);
		break;
	case set_mod:
		FUNC10(def_mod);
		break;
	case set_random:
		FUNC10(def_random);
		break;
	case set_default:
		FUNC10(def_default);
		break;
	case ask_new:
	case ask_all:
		rootEntry = &rootmenu;
		FUNC3(&rootmenu);
		input_mode = ask_silent;
		/* fall through */
	case dont_ask:
	case dont_ask_dont_tell:
	case ask_silent:
		/* Update until a loop caused no more changes */
		do {
			conf_cnt = 0;
			FUNC2(&rootmenu);
		} while (conf_cnt &&
			 (input_mode != dont_ask &&
			  input_mode != dont_ask_dont_tell));
		break;
	}

	if (sync_kconfig) {
		/* silentoldconfig is used during the build so we shall update autoconf.
		 * All other commands are only used to generate a config.
		 */
		if (FUNC4() && FUNC11(NULL)) {
			FUNC14(stderr, "%s", FUNC0("\n*** Error during writing of the kernel configuration.\n\n"));
			FUNC13(1);
		}
		if (FUNC12()) {
			FUNC14(stderr, "%s", FUNC0("\n*** Error during update of the kernel configuration.\n\n"));
			return 1;
		}
	} else {
		if (FUNC11(NULL)) {
			FUNC14(stderr, "%s", FUNC0("\n*** Error during writing of the kernel configuration.\n\n"));
			FUNC13(1);
		}
	}
	return return_value;
}