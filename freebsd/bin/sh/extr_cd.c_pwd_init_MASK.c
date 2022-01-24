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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  VEXPORT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ curdir ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,struct stat*) ; 

void
FUNC7(int warn)
{
	char *pwd;
	struct stat stdot, stpwd;

	pwd = FUNC2("PWD");
	if (pwd && *pwd == '/' && FUNC6(".", &stdot) != -1 &&
	    FUNC6(pwd, &stpwd) != -1 &&
	    stdot.st_dev == stpwd.st_dev &&
	    stdot.st_ino == stpwd.st_ino) {
		if (curdir)
			FUNC0(curdir);
		curdir = FUNC4(pwd);
	}
	if (FUNC1() == NULL && warn)
		FUNC3("sh: cannot determine working directory\n");
	FUNC5("PWD", curdir, VEXPORT);
}