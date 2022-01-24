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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
#define  OPTION_HELP 128 
 int STRBUFSZ ; 
 int /*<<< orphan*/  _IOLBF ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  format ; 
 int FUNC8 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  longopts ; 
 int noparam ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC13 (char*,int) ; 
 int stripus ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(int argc, char **argv)
{
	char *dem, buf[STRBUFSZ];
	size_t p;
	int c, n, opt;

	while ((opt = FUNC8(argc, argv, "_nps:V", longopts, NULL)) !=
	    -1) {
		switch (opt) {
		case '_':
			stripus = 1;
			break;
		case 'n':
			stripus = 0;
			break;
		case 'p':
			noparam = 1;
			break;
		case 's':
			if ((format = FUNC7(optarg)) < 0)
				FUNC4(EXIT_FAILURE, "unsupported format: %s",
				    optarg);
			break;
		case 'V':
			FUNC15();
			/* NOT REACHED */
		case OPTION_HELP:
		default:
			FUNC14();
			/* NOT REACHED */
		}
	}

	argv += optind;
	argc -= optind;

	if (FUNC1() < 0)
		FUNC3(EXIT_FAILURE, "failed to limit stdio rights");
	if (FUNC0() < 0)
		FUNC3(EXIT_FAILURE, "failed to enter capability mode");

	if (*argv != NULL) {
		for (n = 0; n < argc; n++) {
			if ((dem = FUNC2(argv[n])) == NULL)
				FUNC10("%s\n", argv[n]);
			else
				FUNC10("%s\n", dem);
		}
	} else {
		p = 0;
		for (;;) {
			FUNC12(stdout, NULL, _IOLBF, 0);
			c = FUNC6(stdin);
			if (c == EOF || !(FUNC9(c) || FUNC13(".$_", c))) {
				if (p > 0) {
					buf[p] = '\0';
					if ((dem = FUNC2(buf)) == NULL)
						FUNC10("%s", buf);
					else
						FUNC10("%s", dem);
					p = 0;
				}
				if (c == EOF)
					break;
				FUNC11(c);
			} else {
				if ((size_t) p >= sizeof(buf) - 1)
					FUNC16("buffer overflowed");
				else
					buf[p++] = (char) c;
			}

		}
	}

	FUNC5(0);
}