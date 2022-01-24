#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; char* exit; char* echo; scalar_t__ hasErrCtl; } ;

/* Variables and functions */
 int /*<<< orphan*/  STR_ADDSLASH ; 
 int /*<<< orphan*/  _PATH_DEFSHELLDIR ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 TYPE_1__* commandShell ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * shellErrFlag ; 
 char* shellName ; 
 char* shellPath ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 

void
FUNC7(void)
{
    if (shellPath == NULL) {
	/*
	 * We are using the default shell, which may be an absolute
	 * path if DEFSHELL_CUSTOM is defined.
	 */
	shellName = commandShell->name;
#ifdef DEFSHELL_CUSTOM
	if (*shellName == '/') {
	    shellPath = shellName;
	    shellName = strrchr(shellPath, '/');
	    shellName++;
	} else
#endif
	shellPath = FUNC3(_PATH_DEFSHELLDIR, shellName, STR_ADDSLASH);
    }
    if (commandShell->exit == NULL) {
	commandShell->exit = "";
    }
    if (commandShell->echo == NULL) {
	commandShell->echo = "";
    }
    if (commandShell->hasErrCtl && *commandShell->exit) {
	if (shellErrFlag &&
	    FUNC4(commandShell->exit, &shellErrFlag[1]) != 0) {
	    FUNC1(shellErrFlag);
	    shellErrFlag = NULL;
	}
	if (!shellErrFlag) {
	    int n = FUNC5(commandShell->exit) + 2;

	    shellErrFlag = FUNC0(n);
	    if (shellErrFlag) {
		FUNC2(shellErrFlag, n, "-%s", commandShell->exit);
	    }
	}
    } else if (shellErrFlag) {
	FUNC1(shellErrFlag);
	shellErrFlag = NULL;
    }
}