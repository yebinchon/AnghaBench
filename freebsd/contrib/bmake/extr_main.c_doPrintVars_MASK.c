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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 scalar_t__ EXPAND_VARS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VARF_WANTRES ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ debugVflag ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,scalar_t__) ; 
 scalar_t__ printVars ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  progname ; 
 int FUNC9 (char*,int,char*,char*) ; 
 scalar_t__ FUNC10 (char*,char) ; 
 int /*<<< orphan*/  variables ; 

__attribute__((used)) static void
FUNC11(void)
{
	LstNode ln;
	Boolean expandVars;

	if (printVars == EXPAND_VARS)
		expandVars = TRUE;
	else if (debugVflag)
		expandVars = FALSE;
	else
		expandVars = FUNC7(".MAKE.EXPAND_VARIABLES", FALSE);

	for (ln = FUNC2(variables); ln != NULL;
	    ln = FUNC3(ln)) {
		char *var = (char *)FUNC1(ln);
		char *value;
		char *p1;
		
		if (FUNC10(var, '$')) {
			value = p1 = FUNC4(NULL, var, VAR_GLOBAL,
			    VARF_WANTRES);
		} else if (expandVars) {
			char tmp[128];
			int len = FUNC9(tmp, sizeof(tmp), "${%s}", var);
							
			if (len >= (int)sizeof(tmp))
				FUNC0("%s: variable name too big: %s",
				    progname, var);
			value = p1 = FUNC4(NULL, tmp, VAR_GLOBAL,
			    VARF_WANTRES);
		} else {
			value = FUNC5(var, VAR_GLOBAL, &p1);
		}
		FUNC8("%s\n", value ? value : "");
		FUNC6(p1);
	}
}