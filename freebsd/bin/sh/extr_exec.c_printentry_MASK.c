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
struct TYPE_2__ {int index; int /*<<< orphan*/  func; } ;
struct tblentry {scalar_t__ cmdtype; TYPE_1__ param; int /*<<< orphan*/  cmdname; } ;

/* Variables and functions */
 scalar_t__ CMDBUILTIN ; 
 scalar_t__ CMDFUNCTION ; 
 scalar_t__ CMDNORMAL ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const**,char const**,int /*<<< orphan*/ ) ; 
 char* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(struct tblentry *cmdp, int verbose)
{
	int idx;
	const char *path, *opt;
	char *name;

	if (cmdp->cmdtype == CMDNORMAL) {
		idx = cmdp->param.index;
		path = FUNC8();
		do {
			name = FUNC7(&path, &opt, cmdp->cmdname);
			FUNC9(name);
		} while (--idx >= 0);
		FUNC6(name);
	} else if (cmdp->cmdtype == CMDBUILTIN) {
		FUNC5("builtin %s", cmdp->cmdname);
	} else if (cmdp->cmdtype == CMDFUNCTION) {
		FUNC5("function %s", cmdp->cmdname);
		if (verbose) {
			INTOFF;
			name = FUNC1(FUNC3(cmdp->param.func));
			FUNC4(' ');
			FUNC6(name);
			FUNC0(name);
			INTON;
		}
#ifdef DEBUG
	} else {
		error("internal error: cmdtype %d", cmdp->cmdtype);
#endif
	}
	FUNC4('\n');
}