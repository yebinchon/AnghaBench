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
struct boot_info {long long boot_cpuid_phys; int /*<<< orphan*/  dt; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DEFAULT_FDT_VERSION ; 
 char* DTC_VERSION ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct boot_info* FUNC1 (char const*) ; 
 struct boot_info* FUNC2 (char const*) ; 
 struct boot_info* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct boot_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct boot_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct boot_info*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*) ; 
 int FUNC11 (int,char**,char*) ; 
 void* minsize ; 
 char* optarg ; 
 int optind ; 
 void* padsize ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct boot_info*) ; 
 scalar_t__ quiet ; 
 void* reservenum ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 void* FUNC16 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long long FUNC17 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 

int FUNC19(int argc, char *argv[])
{
	struct boot_info *bi;
	const char *inform = "dts";
	const char *outform = "dts";
	const char *outname = "-";
	int force = 0, check = 0;
	const char *arg;
	int opt;
	FILE *outf = NULL;
	int outversion = DEFAULT_FDT_VERSION;
	long long cmdline_boot_cpuid = -1;

	quiet      = 0;
	reservenum = 0;
	minsize    = 0;
	padsize    = 0;

	while ((opt = FUNC11(argc, argv, "hI:O:o:V:R:S:p:fcqb:v")) != EOF) {
		switch (opt) {
		case 'I':
			inform = optarg;
			break;
		case 'O':
			outform = optarg;
			break;
		case 'o':
			outname = optarg;
			break;
		case 'V':
			outversion = FUNC16(optarg, NULL, 0);
			break;
		case 'R':
			reservenum = FUNC16(optarg, NULL, 0);
			break;
		case 'S':
			minsize = FUNC16(optarg, NULL, 0);
			break;
		case 'p':
			padsize = FUNC16(optarg, NULL, 0);
			break;
		case 'f':
			force = 1;
			break;
		case 'c':
			check = 1;
			break;
		case 'q':
			quiet++;
			break;
		case 'b':
			cmdline_boot_cpuid = FUNC17(optarg, NULL, 0);
			break;
		case 'v':
			FUNC12("Version: %s\n", DTC_VERSION);
			FUNC7(0);
		case 'h':
		default:
			FUNC18();
		}
	}

	if (argc > (optind+1))
		FUNC18();
	else if (argc < (optind+1))
		arg = "-";
	else
		arg = argv[optind];

	/* minsize and padsize are mutually exclusive */
	if (minsize && padsize)
		FUNC0("Can't set both -p and -S\n");

	FUNC10(stderr, "DTC: %s->%s  on file \"%s\"\n",
		inform, outform, arg);

	if (FUNC14(inform, "dts"))
		bi = FUNC3(arg);
	else if (FUNC14(inform, "fs"))
		bi = FUNC2(arg);
	else if(FUNC14(inform, "dtb"))
		bi = FUNC1(arg);
	else
		FUNC0("Unknown input format \"%s\"\n", inform);

	if (cmdline_boot_cpuid != -1)
		bi->boot_cpuid_phys = cmdline_boot_cpuid;

	FUNC8(bi->dt, "");
	FUNC13(force, bi);


	if (FUNC14(outname, "-")) {
		outf = stdout;
	} else {
		outf = FUNC9(outname, "w");
		if (! outf)
			FUNC0("Couldn't open output file %s: %s\n",
			    outname, FUNC15(errno));
	}

	if (FUNC14(outform, "dts")) {
		FUNC6(outf, bi);
	} else if (FUNC14(outform, "dtb")) {
		FUNC5(outf, bi, outversion);
	} else if (FUNC14(outform, "asm")) {
		FUNC4(outf, bi, outversion);
	} else if (FUNC14(outform, "null")) {
		/* do nothing */
	} else {
		FUNC0("Unknown output format \"%s\"\n", outform);
	}

	FUNC7(0);
}