#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cb_type; scalar_t__ cb_scrub_cmd; int cb_argc; char** cb_argv; } ;
typedef  TYPE_1__ scrub_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ POOL_SCAN_NONE ; 
 scalar_t__ POOL_SCAN_SCRUB ; 
 scalar_t__ POOL_SCRUB_NORMAL ; 
 scalar_t__ POOL_SCRUB_PAUSE ; 
 int FUNC0 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  scrub_callback ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(int argc, char **argv)
{
	int c;
	scrub_cbdata_t cb;

	cb.cb_type = POOL_SCAN_SCRUB;
	cb.cb_scrub_cmd = POOL_SCRUB_NORMAL;

	/* check options */
	while ((c = FUNC2(argc, argv, "sp")) != -1) {
		switch (c) {
		case 's':
			cb.cb_type = POOL_SCAN_NONE;
			break;
		case 'p':
			cb.cb_scrub_cmd = POOL_SCRUB_PAUSE;
			break;
		case '?':
			(void) FUNC1(stderr, FUNC3("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}

	if (cb.cb_type == POOL_SCAN_NONE &&
	    cb.cb_scrub_cmd == POOL_SCRUB_PAUSE) {
		(void) FUNC1(stderr, "%s", FUNC3("invalid option combination: "
		    "-s and -p are mutually exclusive\n"));
		FUNC4(B_FALSE);
	}

	cb.cb_argc = argc;
	cb.cb_argv = argv;
	argc -= optind;
	argv += optind;

	if (argc < 1) {
		(void) FUNC1(stderr, "%s", FUNC3("missing pool name argument\n"));
		FUNC4(B_FALSE);
	}

	return (FUNC0(argc, argv, B_TRUE, NULL, scrub_callback, &cb));
}