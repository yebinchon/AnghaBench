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
struct TYPE_3__ {int /*<<< orphan*/  dtsp_pdescs; } ;
typedef  TYPE_1__ dt_sugar_parse_t ;
typedef  int /*<<< orphan*/  dt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  DT_TOK_ASGN ; 
 int /*<<< orphan*/  DT_TOK_LAND ; 
 int /*<<< orphan*/  DT_TOK_LNEG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static dt_node_t *
FUNC7(dt_sugar_parse_t *dp,
    dt_node_t *pred, int condid, int newcond)
{
	dt_node_t *value, *body, *newpred;

	/* predicate is !self->%error */
	newpred = FUNC2(DT_TOK_LNEG, FUNC6());

	if (condid == 0) {
		/*
		 * value is (1 && pred)
		 *
		 * Note, D doesn't allow a probe-local "this" variable to
		 * be reused as a different type, even from a different probe.
		 * Therefore, value can't simply be <pred>, because then
		 * its type could be different when we reuse this condid
		 * in a different meta-clause.
		 */
		value = FUNC3(DT_TOK_LAND, FUNC1(1), pred);
	} else {
		/* value is (this->%condition_<condid> && pred) */
		value = FUNC3(DT_TOK_LAND,
		    FUNC5(condid), pred);
	}

	/* body is "this->%condition_<retval> = <value>;" */
	body = FUNC4(FUNC3(DT_TOK_ASGN,
	    FUNC5(newcond), value));

	return (FUNC0(dp->dtsp_pdescs, newpred, body));
}