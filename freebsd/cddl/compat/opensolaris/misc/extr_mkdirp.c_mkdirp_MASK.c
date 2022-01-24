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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*,char) ; 

int
FUNC6(const char *d, mode_t mode)
{
	char  *endptr, *ptr, *slash, *str;

	str = FUNC3(d);

	/* If space couldn't be allocated for the simplified names, return. */

	if (str == NULL)
		return (-1);

		/* Try to make the directory */

	if (FUNC2(str, mode) == 0) {
		FUNC1(str);
		return (0);
	}
	if (errno != ENOENT) {
		FUNC1(str);
		return (-1);
	}
	endptr = FUNC5(str, '\0');
	slash = FUNC5(str, '/');

		/* Search upward for the non-existing parent */

	while (slash != NULL) {

		ptr = slash;
		*ptr = '\0';

			/* If reached an existing parent, break */

		if (FUNC0(str, F_OK) == 0)
			break;

			/* If non-existing parent */

		else {
			slash = FUNC5(str, '/');

				/* If under / or current directory, make it. */

			if (slash == NULL || slash == str) {
				if (FUNC2(str, mode) != 0 && errno != EEXIST) {
					FUNC1(str);
					return (-1);
				}
				break;
			}
		}
	}

	/* Create directories starting from upmost non-existing parent */

	while ((ptr = FUNC4(str, '\0')) != endptr) {
		*ptr = '/';
		if (FUNC2(str, mode) != 0 && errno != EEXIST) {
			/*
			 *  If the mkdir fails because str already
			 *  exists (EEXIST), then str has the form
			 *  "existing-dir/..", and this is really
			 *  ok. (Remember, this loop is creating the
			 *  portion of the path that didn't exist)
			 */
			FUNC1(str);
			return (-1);
		}
	}
	FUNC1(str);
	return (0);
}