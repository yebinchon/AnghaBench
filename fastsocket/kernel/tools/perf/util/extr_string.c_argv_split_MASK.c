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
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char const*,int) ; 
 char** FUNC5 (int) ; 

char **FUNC6(const char *str, int *argcp)
{
	int argc = FUNC1(str);
	char **argv = FUNC5(sizeof(*argv) * (argc+1));
	char **argvp;

	if (argv == NULL)
		goto out;

	if (argcp)
		*argcp = argc;

	argvp = argv;

	while (*str) {
		str = FUNC3(str);

		if (*str) {
			const char *p = str;
			char *t;

			str = FUNC2(str);

			t = FUNC4(p, str-p);
			if (t == NULL)
				goto fail;
			*argvp++ = t;
		}
	}
	*argvp = NULL;

out:
	return argv;

fail:
	FUNC0(argv);
	return NULL;
}