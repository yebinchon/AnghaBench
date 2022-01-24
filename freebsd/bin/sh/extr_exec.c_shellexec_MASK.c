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
 int ENOENT ; 
 int ENOEXEC ; 
 int ENOTDIR ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 char* FUNC1 (char const**,char const**,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**,char**) ; 

void
FUNC6(char **argv, char **envp, const char *path, int idx)
{
	char *cmdname;
	const char *opt;
	int e;

	if (FUNC2(argv[0], '/') != NULL) {
		FUNC5(argv[0], argv, envp);
		e = errno;
	} else {
		e = ENOENT;
		while ((cmdname = FUNC1(&path, &opt, argv[0])) != NULL) {
			if (--idx < 0 && opt == NULL) {
				FUNC5(cmdname, argv, envp);
				if (errno != ENOENT && errno != ENOTDIR)
					e = errno;
				if (e == ENOEXEC)
					break;
			}
			FUNC4(cmdname);
		}
	}

	/* Map to POSIX errors */
	if (e == ENOENT || e == ENOTDIR)
		FUNC0(127, "%s: not found", argv[0]);
	else
		FUNC0(126, "%s: %s", argv[0], FUNC3(e));
}