#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  td_iihash; } ;
typedef  TYPE_1__ tdata_t ;

/* Variables and functions */
 char* CTF_DEFAULT_LABEL ; 
 int CTF_KEEP_STABS ; 
 int /*<<< orphan*/  CTF_LABEL_LASTIDX ; 
 int CTF_USE_DYNSYM ; 
 int EOF ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* debug_level ; 
 void* debug_parse ; 
 int dynsym ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  handle_sig ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* infile ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (char*,char*) ; 
 char* optarg ; 
 int optind ; 
 char* outfile ; 
 int /*<<< orphan*/  progname ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  terminate_cleanup ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,char*,char*,int) ; 

int
FUNC22(int argc, char **argv)
{
	tdata_t *filetd, *mstrtd;
	const char *label = NULL;
	int verbose = 0;
	int ignore_non_c = 0;
	int keep_stabs = 0;
	int c;

#ifdef illumos
	sighold(SIGINT);
	sighold(SIGQUIT);
	sighold(SIGTERM);
#endif

	progname = FUNC2(argv[0]);

	if (FUNC6("CTFCONVERT_DEBUG_LEVEL"))
		debug_level = FUNC1(FUNC6("CTFCONVERT_DEBUG_LEVEL"));
	if (FUNC6("CTFCONVERT_DEBUG_PARSE"))
		debug_parse = FUNC1(FUNC6("CTFCONVERT_DEBUG_PARSE"));

	while ((c = FUNC7(argc, argv, ":l:L:o:givs")) != EOF) {
		switch (c) {
		case 'l':
			label = optarg;
			break;
		case 'L':
			if ((label = FUNC6(optarg)) == NULL)
				label = CTF_DEFAULT_LABEL;
			break;
		case 'o':
			outfile = optarg;
			break;
		case 's':
			dynsym = CTF_USE_DYNSYM;
			break;
		case 'i':
			ignore_non_c = 1;
			break;
		case 'g':
			keep_stabs = CTF_KEEP_STABS;
			break;
		case 'v':
			verbose = 1;
			break;
		default:
			FUNC20();
			FUNC3(2);
		}
	}

	if (FUNC6("STRIPSTABS_KEEP_STABS") != NULL)
		keep_stabs = CTF_KEEP_STABS;

	if (argc - optind != 1 || label == NULL) {
		FUNC20();
		FUNC3(2);
	}

	infile = argv[optind];
	if (FUNC0(infile, R_OK) != 0)
		FUNC19("Can't access %s", infile);

	/*
	 * Upon receipt of a signal, we want to clean up and exit.  Our
	 * primary goal during cleanup is to restore the system to a state
	 * such that a subsequent make will eventually cause this command to
	 * be re-run.  If we remove the input file (which we do if we get a
	 * signal and the user didn't specify a separate output file), make
	 * will need to rebuild the input file, and will then need to re-run
	 * ctfconvert, which is what we want.
	 */
	FUNC12(terminate_cleanup);

#ifdef illumos
	sigset(SIGINT, handle_sig);
	sigset(SIGQUIT, handle_sig);
	sigset(SIGTERM, handle_sig);
#else
	FUNC14(SIGINT, handle_sig);
	FUNC14(SIGQUIT, handle_sig);
	FUNC14(SIGTERM, handle_sig);
#endif

	filetd = FUNC18();

	if (!FUNC4(filetd, infile, ignore_non_c))
		FUNC19("%s doesn't have type data to convert\n", infile);

	if (verbose)
		FUNC8(filetd->td_iihash);

	mstrtd = FUNC18();
	FUNC9(filetd, mstrtd, NULL, 1);

	FUNC17(mstrtd, label, CTF_LABEL_LASTIDX);

	/*
	 * If the user supplied an output file that is different from the
	 * input file, write directly to the output file.  Otherwise, write
	 * to a temporary file, and replace the input file when we're done.
	 */
	if (outfile && FUNC16(infile, outfile) != 0) {
		FUNC21(mstrtd, infile, outfile, dynsym | keep_stabs);
	} else {
		char *tmpname = FUNC10(infile, ".ctf");
		FUNC21(mstrtd, infile, tmpname, dynsym | keep_stabs);
		if (FUNC11(tmpname, infile) != 0)
			FUNC19("Couldn't rename temp file %s", tmpname);
		FUNC5(tmpname);
	}

	return (0);
}