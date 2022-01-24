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
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int nargc ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ parenlevel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char** t_wp ; 

int
FUNC7(int argc, char **argv)
{
	int	res;
	char	*p;

	if ((p = FUNC4(argv[0], '/')) == NULL)
		p = argv[0];
	else
		p++;
	if (FUNC3(p, "[") == 0) {
		if (FUNC3(argv[--argc], "]") != 0)
			FUNC0("missing ]");
		argv[argc] = NULL;
	}

	/* no expression => false */
	if (--argc <= 0)
		return 1;

#ifndef SHELL
	(void)FUNC2(LC_CTYPE, "");
#endif
	nargc = argc;
	t_wp = &argv[1];
	parenlevel = 0;
	if (nargc == 4 && FUNC3(*t_wp, "!") == 0) {
		/* Things like ! "" -o x do not fit in the normal grammar. */
		--nargc;
		++t_wp;
		res = FUNC1(FUNC6(*t_wp));
	} else
		res = !FUNC1(FUNC6(*t_wp));

	if (--nargc > 0)
		FUNC5(*t_wp, "unexpected operator");

	return res;
}