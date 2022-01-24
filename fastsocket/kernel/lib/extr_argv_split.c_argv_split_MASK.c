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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,int,int /*<<< orphan*/ ) ; 
 char** FUNC3 (int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char const*) ; 

char **FUNC6(gfp_t gfp, const char *str, int *argcp)
{
	int argc = FUNC1(str);
	char **argv = FUNC3(sizeof(*argv) * (argc+1), gfp);
	char **argvp;

	if (argv == NULL)
		goto out;

	if (argcp)
		*argcp = argc;

	argvp = argv;

	while (*str) {
		str = FUNC5(str);

		if (*str) {
			const char *p = str;
			char *t;

			str = FUNC4(str);

			t = FUNC2(p, str-p, gfp);
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