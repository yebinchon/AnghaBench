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
struct dt_info {char const* outname; long long boot_cpuid_phys; int dtsflags; int /*<<< orphan*/  dt; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DEFAULT_FDT_VERSION ; 
 int DTSF_PLUGIN ; 
 int EOF ; 
 int /*<<< orphan*/  PHANDLE_BOTH ; 
 int /*<<< orphan*/  PHANDLE_EPAPR ; 
 int /*<<< orphan*/  PHANDLE_LEGACY ; 
 char const* alignsize ; 
 int auto_label_aliases ; 
 void* depfile ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct dt_info* FUNC1 (char const*) ; 
 struct dt_info* FUNC2 (char const*) ; 
 struct dt_info* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dt_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct dt_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct dt_info*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (void*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char,void*) ; 
 int generate_fixups ; 
 int /*<<< orphan*/  FUNC13 (struct dt_info*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct dt_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct dt_info*,char*) ; 
 int generate_symbols ; 
 char* FUNC16 (char const*,char*) ; 
 char* FUNC17 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 void* minsize ; 
 char const* optarg ; 
 int optind ; 
 void* padsize ; 
 int /*<<< orphan*/  FUNC19 (int,int,char const*) ; 
 int /*<<< orphan*/  phandle_format ; 
 int /*<<< orphan*/  FUNC20 (int,struct dt_info*) ; 
 scalar_t__ quiet ; 
 void* reservenum ; 
 int /*<<< orphan*/  FUNC21 (struct dt_info*) ; 
 int /*<<< orphan*/  FUNC22 (char const*) ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC23 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 void* FUNC25 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long long FUNC26 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 

int FUNC30(int argc, char *argv[])
{
	struct dt_info *dti;
	const char *inform = NULL;
	const char *outform = NULL;
	const char *outname = "-";
	const char *depname = NULL;
	bool force = false, sort = false;
	const char *arg;
	int opt;
	FILE *outf = NULL;
	int outversion = DEFAULT_FDT_VERSION;
	long long cmdline_boot_cpuid = -1;

	quiet      = 0;
	reservenum = 0;
	minsize    = 0;
	padsize    = 0;
	alignsize  = 0;

	while ((opt = FUNC28()) != EOF) {
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
			outversion = FUNC25(optarg, NULL, 0);
			break;
		case 'd':
			depname = optarg;
			break;
		case 'R':
			reservenum = FUNC25(optarg, NULL, 0);
			break;
		case 'S':
			minsize = FUNC25(optarg, NULL, 0);
			break;
		case 'p':
			padsize = FUNC25(optarg, NULL, 0);
			break;
		case 'a':
			alignsize = FUNC25(optarg, NULL, 0);
			if (!FUNC18(alignsize))
				FUNC0("Invalid argument \"%d\" to -a option\n",
				    alignsize);
			break;
		case 'f':
			force = true;
			break;
		case 'q':
			quiet++;
			break;
		case 'b':
			cmdline_boot_cpuid = FUNC26(optarg, NULL, 0);
			break;
		case 'i':
			FUNC22(optarg);
			break;
		case 'v':
			FUNC29();
		case 'H':
			if (FUNC23(optarg, "legacy"))
				phandle_format = PHANDLE_LEGACY;
			else if (FUNC23(optarg, "epapr"))
				phandle_format = PHANDLE_EPAPR;
			else if (FUNC23(optarg, "both"))
				phandle_format = PHANDLE_BOTH;
			else
				FUNC0("Invalid argument \"%s\" to -H option\n",
				    optarg);
			break;

		case 's':
			sort = true;
			break;

		case 'W':
			FUNC19(true, false, optarg);
			break;

		case 'E':
			FUNC19(false, true, optarg);
			break;

		case '@':
			generate_symbols = 1;
			break;
		case 'A':
			auto_label_aliases = 1;
			break;

		case 'h':
			FUNC27(NULL);
		default:
			FUNC27("unknown option");
		}
	}

	if (argc > (optind+1))
		FUNC27("missing files");
	else if (argc < (optind+1))
		arg = "-";
	else
		arg = argv[optind];

	/* minsize and padsize are mutually exclusive */
	if (minsize && padsize)
		FUNC0("Can't set both -p and -S\n");

	if (depname) {
		depfile = FUNC10(depname, "w");
		if (!depfile)
			FUNC0("Couldn't open dependency file %s: %s\n", depname,
			    FUNC24(errno));
		FUNC11(depfile, "%s:", outname);
	}

	if (inform == NULL)
		inform = FUNC16(arg, "dts");
	if (outform == NULL) {
		outform = FUNC17(outname, NULL);
		if (outform == NULL) {
			if (FUNC23(inform, "dts"))
				outform = "dtb";
			else
				outform = "dts";
		}
	}
	if (FUNC23(inform, "dts"))
		dti = FUNC3(arg);
	else if (FUNC23(inform, "fs"))
		dti = FUNC2(arg);
	else if(FUNC23(inform, "dtb"))
		dti = FUNC1(arg);
	else
		FUNC0("Unknown input format \"%s\"\n", inform);

	dti->outname = outname;

	if (depfile) {
		FUNC12('\n', depfile);
		FUNC8(depfile);
	}

	if (cmdline_boot_cpuid != -1)
		dti->boot_cpuid_phys = cmdline_boot_cpuid;

	FUNC9(dti->dt, "");
	FUNC20(force, dti);

	/* on a plugin, generate by default */
	if (dti->dtsflags & DTSF_PLUGIN) {
		generate_fixups = 1;
	}

	if (auto_label_aliases)
		FUNC14(dti, "aliases", false);

	if (generate_symbols)
		FUNC14(dti, "__symbols__", true);

	if (generate_fixups) {
		FUNC13(dti, "__fixups__");
		FUNC15(dti, "__local_fixups__");
	}

	if (sort)
		FUNC21(dti);

	if (FUNC23(outname, "-")) {
		outf = stdout;
	} else {
		outf = FUNC10(outname, "wb");
		if (! outf)
			FUNC0("Couldn't open output file %s: %s\n",
			    outname, FUNC24(errno));
	}

	if (FUNC23(outform, "dts")) {
		FUNC6(outf, dti);
	} else if (FUNC23(outform, "dtb")) {
		FUNC5(outf, dti, outversion);
	} else if (FUNC23(outform, "asm")) {
		FUNC4(outf, dti, outversion);
	} else if (FUNC23(outform, "null")) {
		/* do nothing */
	} else {
		FUNC0("Unknown output format \"%s\"\n", outform);
	}

	FUNC7(0);
}