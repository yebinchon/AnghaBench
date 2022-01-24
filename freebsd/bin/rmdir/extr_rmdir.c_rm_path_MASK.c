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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(char *path)
{
	char *p;

	p = path + FUNC2(path);
	while (--p > path && *p == '/')
		;
	*++p = '\0';
	while ((p = FUNC3(path, '/')) != NULL) {
		/* Delete trailing slashes. */
		while (--p >= path && *p == '/')
			;
		*++p = '\0';
		if (p == path)
			break;

		if (FUNC1(path) < 0) {
			FUNC4("%s", path);
			return (1);
		}
		if (vflag)
			FUNC0("%s\n", path);
	}

	return (0);
}