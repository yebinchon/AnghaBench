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
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char *argv[])
{
	int ch, sflag, dflag;
	char *p, hostname[MAXHOSTNAMELEN];

	sflag = 0;
	dflag = 0;
	while ((ch = FUNC3(argc, argv, "fsd")) != -1)
		switch (ch) {
		case 'f':
			/*
			 * On Linux, "hostname -f" prints FQDN.
			 * BSD "hostname" always prints FQDN by
			 * default, so we accept but ignore -f.
			 */
			break;
		case 's':
			sflag = 1;
			break;
		case 'd':
			dflag = 1;
			break;
		case '?':
		default:
			FUNC9();
		}
	argc -= optind;
	argv += optind;

	if (argc > 1 || (sflag && dflag))
		FUNC9();

	if (*argv) {
		if (FUNC5(*argv, (int)FUNC8(*argv)))
			FUNC0(1, "sethostname");
	} else {
		if (FUNC2(hostname, (int)sizeof(hostname)))
			FUNC0(1, "gethostname");
		if (sflag) {
			p = FUNC6(hostname, '.');
			if (p != NULL)
				*p = '\0';
		} else if (dflag) {
			p = FUNC6(hostname, '.');
			if (p != NULL)
				FUNC7(hostname, ++p);
		}
		(void)FUNC4("%s\n", hostname);
	}
	FUNC1(0);
}