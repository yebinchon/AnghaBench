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

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int MS_FORCE ; 
 int /*<<< orphan*/  OP_MOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(int argc, char **argv)
{
	int flags = 0;
	int c;

	/* check options */
	while ((c = FUNC1(argc, argv, "f")) != -1) {
		switch (c) {
		case 'f':
			flags = MS_FORCE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			(void) FUNC0(stderr, "%s", FUNC2("usage: unmount [-f] "
			    "<path>\n"));
			return (2);
		}
	}

	argc -= optind;
	argv += optind;

	/* check arguments */
	if (argc != 1) {
		if (argc == 0)
			(void) FUNC0(stderr, "%s", FUNC2("missing path "
			    "argument\n"));
		else
			(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		(void) FUNC0(stderr, "%s", FUNC2("usage: unmount [-f] <path>\n"));
		return (2);
	}

	return (FUNC3(OP_MOUNT, argv[0], flags, B_TRUE));
}