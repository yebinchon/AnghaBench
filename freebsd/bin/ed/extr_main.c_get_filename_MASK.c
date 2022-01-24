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
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* errmsg ; 
 char* FUNC2 (int*,int) ; 
 int FUNC3 () ; 
 char* ibufp ; 
 scalar_t__ FUNC4 (char*) ; 
 char* old_filename ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* shcmd ; 

char *
FUNC6(void)
{
	static char *file = NULL;
	static int filesz = 0;

	int n;

	if (*ibufp != '\n') {
		FUNC1();
		if (*ibufp == '\n') {
			errmsg = "invalid filename";
			return NULL;
		} else if ((ibufp = FUNC2(&n, 1)) == NULL)
			return NULL;
		else if (*ibufp == '!') {
			ibufp++;
			if ((n = FUNC3()) < 0)
				return NULL;
			if (n)
				FUNC5("%s\n", shcmd + 1);
			return shcmd;
		} else if (n > PATH_MAX - 1) {
			errmsg = "filename too long";
			return  NULL;
		}
	}
#ifndef BACKWARDS
	else if (*old_filename == '\0') {
		errmsg = "no current filename";
		return  NULL;
	}
#endif
	FUNC0(file, filesz, PATH_MAX, NULL);
	for (n = 0; *ibufp != '\n';)
		file[n++] = *ibufp++;
	file[n] = '\0';
	return FUNC4(file) ? file : NULL;
}