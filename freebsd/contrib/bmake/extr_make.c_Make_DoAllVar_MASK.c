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
struct TYPE_7__ {int flags; int type; int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  ALLSRC ; 
 int DONE_ALLSRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  MakeAddAllSrc ; 
 int /*<<< orphan*/  MakeUnmark ; 
 int /*<<< orphan*/  OODATE ; 
 int OP_JOIN ; 
 int /*<<< orphan*/  TARGET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(GNode *gn)
{
    if (gn->flags & DONE_ALLSRC)
	return;
    
    FUNC0(gn->children, MakeUnmark, gn);
    FUNC0(gn->children, MakeAddAllSrc, gn);

    if (!FUNC1 (OODATE, gn)) {
	FUNC2(OODATE, "", gn, 0);
    }
    if (!FUNC1 (ALLSRC, gn)) {
	FUNC2(ALLSRC, "", gn, 0);
    }

    if (gn->type & OP_JOIN) {
	char *p1;
	FUNC2(TARGET, FUNC3(ALLSRC, gn, &p1), gn, 0);
	FUNC4(p1);
    }
    gn->flags |= DONE_ALLSRC;
}