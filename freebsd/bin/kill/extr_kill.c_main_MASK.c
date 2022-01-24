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
typedef  long pid_t ;

/* Variables and functions */
 int SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 int FUNC3 (long,int) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 void* FUNC11 (char*,char**,int) ; 
 int sys_nsig ; 
 char** sys_signame ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

int
FUNC15(int argc, char *argv[])
{
	long pidl;
	pid_t pid;
	int errors, numsig, ret;
	char *ep;

	if (argc < 2)
		FUNC12();

	numsig = SIGTERM;

	argc--, argv++;
	if (!FUNC9(*argv, "-l")) {
		argc--, argv++;
		if (argc > 1)
			FUNC12();
		if (argc == 1) {
			if (!FUNC2(**argv))
				FUNC12();
			numsig = FUNC11(*argv, &ep, 10);
			if (!**argv || *ep)
				FUNC0(2, "illegal signal number: %s", *argv);
			if (numsig >= 128)
				numsig -= 128;
			if (numsig <= 0 || numsig >= sys_nsig)
				FUNC5(*argv);
			FUNC6("%s\n", sys_signame[numsig]);
			return (0);
		}
		FUNC7(stdout);
		return (0);
	}

	if (!FUNC9(*argv, "-s")) {
		argc--, argv++;
		if (argc < 1) {
			FUNC14("option requires an argument -- s");
			FUNC12();
		}
		if (FUNC9(*argv, "0")) {
			if ((numsig = FUNC8(*argv)) < 0)
				FUNC5(*argv);
		} else
			numsig = 0;
		argc--, argv++;
	} else if (**argv == '-' && *(*argv + 1) != '-') {
		++*argv;
		if (FUNC1(**argv)) {
			if ((numsig = FUNC8(*argv)) < 0)
				FUNC5(*argv);
		} else if (FUNC2(**argv)) {
			numsig = FUNC11(*argv, &ep, 10);
			if (!**argv || *ep)
				FUNC0(2, "illegal signal number: %s", *argv);
			if (numsig < 0)
				FUNC5(*argv);
		} else
			FUNC5(*argv);
		argc--, argv++;
	}

	if (argc > 0 && FUNC10(*argv, "--", 2) == 0)
		argc--, argv++;

	if (argc == 0)
		FUNC12();

	for (errors = 0; argc; argc--, argv++) {
#ifdef SHELL
		if (**argv == '%')
			ret = killjob(*argv, numsig);
		else
#endif
		{
			pidl = FUNC11(*argv, &ep, 10);
			/* Check for overflow of pid_t. */
			pid = (pid_t)pidl;
			if (!**argv || *ep || pid != pidl)
				FUNC0(2, "illegal process id: %s", *argv);
			ret = FUNC3(pid, numsig);
		}
		if (ret == -1) {
			FUNC13("%s", *argv);
			errors = 1;
		}
	}

	return (errors);
}