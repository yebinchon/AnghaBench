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
 int /*<<< orphan*/  CAP_FCNTL ; 
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_MMAP_R ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  CAP_SEEK ; 
 int /*<<< orphan*/  ENCODING_16BIT_BIG ; 
 int /*<<< orphan*/  ENCODING_16BIT_LITTLE ; 
 int /*<<< orphan*/  ENCODING_32BIT_BIG ; 
 int /*<<< orphan*/  ENCODING_32BIT_LITTLE ; 
 int /*<<< orphan*/  ENCODING_7BIT ; 
 int /*<<< orphan*/  ENCODING_8BIT ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FA_OPEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  RADIX_DECIMAL ; 
 int /*<<< orphan*/  RADIX_HEX ; 
 int /*<<< orphan*/  RADIX_OCTAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  encoding ; 
 int encoding_size ; 
 int entire_file ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int min_len ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  radix ; 
 int show_filename ; 
 int show_loc ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  strings_longopts ; 
 int FUNC14 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16(int argc, char **argv)
{
	fileargs_t *fa;
	cap_rights_t rights;
	int ch, rc;

	rc = 0;
	min_len = 0;
	encoding_size = 1;
	if (FUNC5(EV_CURRENT) == EV_NONE)
		FUNC7(EXIT_FAILURE, "ELF library initialization failed: %s",
		    FUNC4(-1));

	while ((ch = FUNC11(argc, argv, "1234567890ae:fhn:ot:Vv",
	    strings_longopts, NULL)) != -1) {
		switch ((char)ch) {
		case 'a':
			entire_file = 1;
			break;
		case 'e':
			if (*optarg == 's') {
				encoding = ENCODING_7BIT;
			} else if (*optarg == 'S') {
				encoding = ENCODING_8BIT;
			} else if (*optarg == 'b') {
				encoding = ENCODING_16BIT_BIG;
				encoding_size = 2;
			} else if (*optarg == 'B') {
				encoding = ENCODING_32BIT_BIG;
				encoding_size = 4;
			} else if (*optarg == 'l') {
				encoding = ENCODING_16BIT_LITTLE;
				encoding_size = 2;
			} else if (*optarg == 'L') {
				encoding = ENCODING_32BIT_LITTLE;
				encoding_size = 4;
			} else
				FUNC15();
			        /* NOTREACHED */
			break;
		case 'f':
			show_filename = 1;
			break;
		case 'n':
			min_len = FUNC14(optarg, (char**)NULL, 10);
			if (min_len <= 0)
				FUNC7(EX_USAGE, "option -n should specify a "
				    "positive decimal integer.");
			break;
		case 'o':
			show_loc = 1;
			radix = RADIX_OCTAL;
			break;
		case 't':
			show_loc = 1;
			if (*optarg == 'd')
				radix = RADIX_DECIMAL;
			else if (*optarg == 'o')
				radix = RADIX_OCTAL;
			else if (*optarg == 'x')
				radix = RADIX_HEX;
			else
				FUNC15();
			        /* NOTREACHED */
			break;
		case 'v':
		case 'V':
			FUNC13();
			/* NOTREACHED */
		case '0':
	        case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
			min_len *= 10;
			min_len += ch - '0';
			break;
		case 'h':
		case '?':
		default:
			FUNC15();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	FUNC0(&rights, CAP_READ, CAP_SEEK, CAP_FSTAT, CAP_FCNTL, CAP_MMAP_R);
	fa = FUNC9(argc, argv, O_RDONLY, 0, &rights, FA_OPEN);
	if (fa == NULL)
		FUNC6(1, "Unable to initialize casper fileargs");

	FUNC1();
	if (FUNC3() < 0 || FUNC2() < 0) {
		FUNC8(fa);
		FUNC6(1, "Unable to enter capability mode");
	}

	if (min_len == 0)
		min_len = 4;
	if (*argv == NULL)
		rc = FUNC10("{standard input}", stdin, 0, 0);
	else while (*argv != NULL) {
		if (FUNC12(fa, *argv) != 0)
			rc = 1;
		argv++;
	}

	FUNC8(fa);

	return (rc);
}