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
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_PROBESPEC_NAME ; 
 int /*<<< orphan*/  DTRACE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int g_count ; 
 int /*<<< orphan*/  g_errexit ; 
 int g_errs ; 
 int /*<<< orphan*/  g_fd ; 
 char* g_progname ; 
 int /*<<< orphan*/  g_verbose ; 
 int FUNC9 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (char*,char) ; 

int
FUNC12(int argc, char *argv[])
{
	dtrace_probedesc_t pd, *pdp = NULL;
	dtrace_hdl_t *dtp;
	int err, c;
	char *p;

	g_progname = argv[0];

	if ((dtp = FUNC4(DTRACE_VERSION, 0, &err)) == NULL) {
		(void) FUNC8(stderr, "%s: failed to open dtrace: %s\n",
		    g_progname, FUNC2(dtp, err));
		return (1);
	}

	while ((c = FUNC9(argc, argv, "evx:")) != -1) {
		switch (c) {
		case 'e':
			g_errexit++;
			break;
		case 'v':
			g_verbose++;
			break;
		case 'x':
			if ((p = FUNC11(optarg, '=')) != NULL)
				*p++ = '\0';

			if (FUNC6(dtp, optarg, p) != 0) {
				(void) FUNC8(stderr, "%s: failed to set "
				    "option -x %s: %s\n", g_progname, optarg,
				    FUNC2(dtp, FUNC3(dtp)));
				return (2);
			}
			break;

		default:
			(void) FUNC8(stderr, "Usage: %s [-ev] "
			    "[-x opt[=arg]] [probedesc]\n", g_progname);
			return (2);
		}
	}

	argv += optind;
	argc -= optind;

	if (argc > 0) {
		if (FUNC7(dtp, DTRACE_PROBESPEC_NAME, argv[0], &pd)) {
			(void) FUNC8(stderr, "%s: invalid probe description "
			    "%s: %s\n", g_progname, argv[0],
			    FUNC2(dtp, FUNC3(dtp)));
			return (2);
		}
		pdp = &pd;
	}

	g_fd = FUNC1(dtp);
	(void) FUNC5(dtp, pdp, probe, NULL);
	FUNC0(dtp);

	(void) FUNC10("\nTotal probes: %d\n", g_count);
	(void) FUNC10("Total errors: %d\n\n", g_errs);

	return (g_errs != 0);
}