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
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int*,char const***) ; 
 int /*<<< orphan*/  FUNC2 (int,char const**) ; 

__attribute__((used)) static int FUNC3(int *argcp, const char ***argv)
{
	int done_alias = 0;

	while (1) {
		/* See if it's an internal command */
		FUNC2(*argcp, *argv);

		/* .. then try the external ones */
		FUNC0(*argv);

		/* It could be an alias -- this works around the insanity
		 * of overriding "perf log" with "perf show" by having
		 * alias.log = show
		 */
		if (done_alias || !FUNC1(argcp, argv))
			break;
		done_alias = 1;
	}

	return done_alias;
}