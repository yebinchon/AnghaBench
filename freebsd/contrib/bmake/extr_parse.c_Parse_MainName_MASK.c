#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; int /*<<< orphan*/  name; int /*<<< orphan*/  cohorts; } ;
typedef  int /*<<< orphan*/  Lst ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LST_CONCNEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int OP_DOUBLEDEP ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* mainNode ; 

Lst
FUNC5(void)
{
    Lst           mainList;	/* result list */

    mainList = FUNC2(FALSE);

    if (mainNode == NULL) {
	FUNC3("no target to make.");
    	/*NOTREACHED*/
    } else if (mainNode->type & OP_DOUBLEDEP) {
	(void)FUNC0(mainList, mainNode);
	FUNC1(mainList, mainNode->cohorts, LST_CONCNEW);
    }
    else
	(void)FUNC0(mainList, mainNode);
    FUNC4(".TARGETS", mainNode->name, VAR_GLOBAL);
    return (mainList);
}