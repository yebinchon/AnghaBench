#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ made; } ;
typedef  TYPE_1__ GNode ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  ALLSRC ; 
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  TARG_NOCREATE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

Boolean
FUNC5(const char *target, const char *fname) {
    GNode *gn = FUNC2(target, TARG_NOCREATE);

    if (gn == NULL)
	return FALSE;

    if (fname)
	FUNC3(ALLSRC, fname, gn, 0);

    FUNC0(gn);
    if (gn->made == ERROR) {
	FUNC1(gn, "\n\nStop.");
	FUNC4(1);
    }
    return TRUE;
}