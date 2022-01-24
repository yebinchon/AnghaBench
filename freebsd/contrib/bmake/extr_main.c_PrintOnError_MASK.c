#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_7__ {int /*<<< orphan*/  type; int /*<<< orphan*/  commands; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  OP_SPECIAL ; 
 int /*<<< orphan*/  TARG_NOCREATE ; 
 TYPE_1__* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VARF_WANTRES ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  addErrorCMD ; 
 char* curdir ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

void
FUNC10(GNode *gn, const char *s)
{
    static GNode *en = NULL;
    char tmp[64];
    char *cp;

    if (s)
	FUNC8("%s", s);
	
    FUNC8("\n%s: stopped in %s\n", progname, curdir);

    if (en)
	return;				/* we've been here! */
    if (gn) {
	/*
	 * We can print this even if there is no .ERROR target.
	 */
	FUNC4(".ERROR_TARGET", gn->name, VAR_GLOBAL, 0);
	FUNC3(".ERROR_CMD", VAR_GLOBAL);
	FUNC1(gn->commands, addErrorCMD, gn);
    }
    FUNC9(tmp, "${MAKE_PRINT_VAR_ON_ERROR:@v@$v='${$v}'\n@}",
	    sizeof(tmp) - 1);
    cp = FUNC5(NULL, tmp, VAR_GLOBAL, VARF_WANTRES);
    if (cp) {
	if (*cp)
	    FUNC8("%s", cp);
	FUNC7(cp);
    }
    FUNC6(stdout);

    /*
     * Finally, see if there is a .ERROR target, and run it if so.
     */
    en = FUNC2(".ERROR", TARG_NOCREATE);
    if (en) {
	en->type |= OP_SPECIAL;
	FUNC0(en, en);
    }
}