#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Path ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* cur ; 
 int /*<<< orphan*/  dirSearchPath ; 
 TYPE_1__* dot ; 
 TYPE_1__* dotLast ; 

void
FUNC7(void)
{
    LstNode       ln;		/* a list element */
    Path *p;
    Boolean	  hasLastDot = FALSE;	/* true we should search dot last */

    FUNC6(".PATH", VAR_GLOBAL);
    
    if (FUNC4(dirSearchPath) == SUCCESS) {
	if ((ln = FUNC2(dirSearchPath)) != NULL) {
	    p = (Path *)FUNC1(ln);
	    if (p == dotLast) {
		hasLastDot = TRUE;
		FUNC5(".PATH", dotLast->name, VAR_GLOBAL);
	    }
	}

	if (!hasLastDot) {
	    if (dot)
		FUNC5(".PATH", dot->name, VAR_GLOBAL);
	    if (cur)
		FUNC5(".PATH", cur->name, VAR_GLOBAL);
	}

	while ((ln = FUNC3(dirSearchPath)) != NULL) {
	    p = (Path *)FUNC1(ln);
	    if (p == dotLast)
		continue;
	    if (p == dot && hasLastDot)
		continue;
	    FUNC5(".PATH", p->name, VAR_GLOBAL);
	}

	if (hasLastDot) {
	    if (dot)
		FUNC5(".PATH", dot->name, VAR_GLOBAL);
	    if (cur)
		FUNC5(".PATH", cur->name, VAR_GLOBAL);
	}
	FUNC0(dirSearchPath);
    }
}