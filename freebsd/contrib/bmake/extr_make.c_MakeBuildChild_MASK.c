#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; int cohort_num; int made; int type; scalar_t__ unmade_cohorts; scalar_t__ unmade; scalar_t__ cohorts; scalar_t__ order_pred; } ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DEFERRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int (*) (void*,void*),void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,TYPE_1__*) ; 
 int /*<<< orphan*/  MAKE ; 
 int FUNC4 (void*,void*) ; 
 int OP_WAIT ; 
 scalar_t__ REQUESTED ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int,...) ; 
 int /*<<< orphan*/  toBeMade ; 

__attribute__((used)) static int
FUNC6(void *v_cn, void *toBeMade_next)
{
    GNode *cn = v_cn;

    if (FUNC0(MAKE))
	FUNC5(debug_file, "MakeBuildChild: inspect %s%d, made %d, type %x\n",
	    cn->name, cn->cohort_num, cn->made, cn->type);
    if (cn->made > DEFERRED)
	return 0;

    /* If this node is on the RHS of a .ORDER, check LHSs. */
    if (cn->order_pred && FUNC2(cn->order_pred, MakeCheckOrder, 0)) {
	/* Can't build this (or anything else in this child list) yet */
	cn->made = DEFERRED;
	return 0;			/* but keep looking */
    }

    if (FUNC0(MAKE))
	FUNC5(debug_file, "MakeBuildChild: schedule %s%d\n",
		cn->name, cn->cohort_num);

    cn->made = REQUESTED;
    if (toBeMade_next == NULL)
	FUNC1(toBeMade, cn);
    else
	FUNC3(toBeMade, toBeMade_next, cn);

    if (cn->unmade_cohorts != 0)
	FUNC2(cn->cohorts, MakeBuildChild, toBeMade_next);

    /*
     * If this node is a .WAIT node with unmade chlidren
     * then don't add the next sibling.
     */
    return cn->type & OP_WAIT && cn->unmade > 0;
}