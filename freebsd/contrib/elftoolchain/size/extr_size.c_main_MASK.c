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
typedef  int /*<<< orphan*/  fileargs_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_MMAP_R ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FA_OPEN ; 
#define  OPT_FORMAT 129 
#define  OPT_RADIX 128 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  RADIX_DECIMAL ; 
 int /*<<< orphan*/  RADIX_HEX ; 
 int /*<<< orphan*/  RADIX_OCTAL ; 
 int RETURN_OK ; 
 scalar_t__ STYLE_BERKELEY ; 
 scalar_t__ STYLE_SYSV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int,char const*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  radix ; 
 int show_totals ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  size_longopts ; 
 int /*<<< orphan*/  size_option ; 
 char* FUNC16 (char*) ; 
 int FUNC17 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ style ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*) ; 

int
FUNC22(int argc, char **argv)
{
	cap_rights_t rights;
	fileargs_t *fa;
	int ch, fd, r, rc;
	const char *fn;
	char *defaultfn;

	rc = RETURN_OK;

	if (FUNC6(EV_CURRENT) == EV_NONE)
		FUNC8(EXIT_FAILURE, "ELF library initialization failed: %s",
		    FUNC5(-1));

	while ((ch = FUNC13(argc, argv, "ABVdhotx", size_longopts,
	    NULL)) != -1)
		switch((char)ch) {
		case 'A':
			style = STYLE_SYSV;
			break;
		case 'B':
			style = STYLE_BERKELEY;
			break;
		case 'V':
			FUNC15();
			break;
		case 'd':
			radix = RADIX_DECIMAL;
			break;
		case 'o':
			radix = RADIX_OCTAL;
			break;
		case 't':
			show_totals = 1;
			break;
		case 'x':
			radix = RADIX_HEX;
			break;
		case 0:
			switch (size_option) {
			case OPT_FORMAT:
				if (*optarg == 's' || *optarg == 'S')
					style = STYLE_SYSV;
				else if (*optarg == 'b' || *optarg == 'B')
					style = STYLE_BERKELEY;
				else {
					FUNC21("unrecognized format \"%s\".",
					      optarg);
					FUNC19();
				}
				break;
			case OPT_RADIX:
				r = FUNC17(optarg, NULL, 10);
				if (r == 8)
					radix = RADIX_OCTAL;
				else if (r == 10)
					radix = RADIX_DECIMAL;
				else if (r == 16)
					radix = RADIX_HEX;
				else {
					FUNC21("unsupported radix \"%s\".",
					      optarg);
					FUNC19();
				}
				break;
			default:
				FUNC7(EXIT_FAILURE, "Error in option handling.");
				/*NOTREACHED*/
			}
			break;
		case 'h':
		case '?':
		default:
			FUNC19();
			/* NOTREACHED */
		}
	argc -= optind;
	argv += optind;

	if (argc == 0) {
		defaultfn = FUNC16("a.out");
		if (defaultfn == NULL)
			FUNC7(EXIT_FAILURE, "strdup");
		argc = 1;
		argv = &defaultfn;
	} else {
		defaultfn = NULL;
	}

	FUNC1(&rights, CAP_FSTAT, CAP_MMAP_R);
	fa = FUNC10(argc, argv, O_RDONLY, 0, &rights, FA_OPEN);
	if (fa == NULL)
		FUNC7(EXIT_FAILURE, "failed to initialize fileargs");

	FUNC2();
	if (FUNC4() < 0)
		FUNC7(EXIT_FAILURE, "failed to limit stdio rights");
	if (FUNC3() < 0)
		FUNC7(EXIT_FAILURE, "failed to enter capability mode");

	for (; argc > 0; argc--, argv++) {
		fn = argv[0];
		fd = FUNC11(fa, fn);
		if (fd < 0) {
			FUNC20("%s: Failed to open", fn);
			continue;
		}
		rc = FUNC14(fd, fn);
		if (rc != RETURN_OK)
			FUNC21("%s: File format not recognized", fn);
	}
	if (style == STYLE_BERKELEY) {
		if (show_totals)
			FUNC0();
		FUNC18();
	}
	FUNC9(fa);
	FUNC12(defaultfn);
        return (rc);
}