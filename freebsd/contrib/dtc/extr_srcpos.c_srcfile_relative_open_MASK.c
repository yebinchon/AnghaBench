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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ depfile ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 

FILE *FUNC7(const char *fname, char **fullnamep)
{
	FILE *f;
	char *fullname;

	if (FUNC4(fname, "-")) {
		f = stdin;
		fullname = FUNC6("<stdin>");
	} else {
		fullname = FUNC1(fname, &f);
		if (!f)
			FUNC0("Couldn't open \"%s\": %s\n", fname,
			    FUNC5(errno));
	}

	if (depfile)
		FUNC2(depfile, " %s", fullname);

	if (fullnamep)
		*fullnamep = fullname;
	else
		FUNC3(fullname);

	return f;
}