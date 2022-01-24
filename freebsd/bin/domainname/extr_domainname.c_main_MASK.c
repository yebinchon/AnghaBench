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
typedef  int /*<<< orphan*/  domainname ;

/* Variables and functions */
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char *argv[])
{
	int ch;
	char domainname[MAXHOSTNAMELEN];

	while ((ch = FUNC3(argc, argv, "")) != -1)
		switch (ch) {
		case '?':
			/* fall through */
		default:
			FUNC7();
		}
	argc -= optind;
	argv += optind;

	if (argc > 1)
		FUNC7();

	if (*argv) {
		if (FUNC5(*argv, (int)FUNC6(*argv)))
			FUNC0(1, "setdomainname");
	} else {
		if (FUNC2(domainname, (int)sizeof(domainname)))
			FUNC0(1, "getdomainname");
		(void)FUNC4("%s\n", domainname);
	}
	FUNC1(0);
}