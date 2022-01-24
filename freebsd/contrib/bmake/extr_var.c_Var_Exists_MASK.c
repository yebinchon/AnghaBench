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
typedef  int /*<<< orphan*/  Var ;
typedef  int /*<<< orphan*/  GNode ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FIND_CMD ; 
 int FIND_ENV ; 
 int FIND_GLOBAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VARF_WANTRES ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,char) ; 

Boolean
FUNC5(const char *name, GNode *ctxt)
{
    Var		  *v;
    char          *cp;

    if ((cp = FUNC4(name, '$')) != NULL) {
	cp = FUNC2(NULL, name, ctxt, VARF_WANTRES);
    }
    v = FUNC0(cp ? cp : name, ctxt, FIND_CMD|FIND_GLOBAL|FIND_ENV);
    FUNC3(cp);
    if (v == NULL) {
	return(FALSE);
    } else {
	(void)FUNC1(v, TRUE);
    }
    return(TRUE);
}