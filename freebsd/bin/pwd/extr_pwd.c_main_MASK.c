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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 () ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(int argc, char *argv[])
{
	int physical;
	int ch;
	char *p;

	physical = 1;
	while ((ch = FUNC4(argc, argv, "LP")) != -1)
		switch (ch) {
		case 'L':
			physical = 0;
			break;
		case 'P':
			physical = 1;
			break;
		case '?':
		default:
			FUNC6();
		}
	argc -= optind;
	argv += optind;

	if (argc != 0)
		FUNC6();

	/*
	 * If we're trying to find the logical current directory and that
	 * fails, behave as if -P was specified.
	 */
	if ((!physical && (p = FUNC3()) != NULL) ||
	    (p = FUNC2(NULL, 0)) != NULL)
		FUNC5("%s\n", p);
	else
		FUNC0(1, ".");

	FUNC1(0);
}