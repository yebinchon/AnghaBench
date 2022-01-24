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
struct TYPE_4__ {scalar_t__ dtsp_num_conditions; int /*<<< orphan*/  dtsp_pdescs; } ;
typedef  TYPE_1__ dt_sugar_parse_t ;
typedef  int /*<<< orphan*/  dt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  DT_TOK_LAND ; 
 int /*<<< orphan*/  DT_TOK_LNEG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(dt_sugar_parse_t *dp, int condid, dt_node_t *stmts)
{
	dt_node_t *pred = NULL;

	if (condid == 0) {
		/*
		 * Don't bother with !error on the first clause, because if
		 * there is only one clause, we don't add the prelude to
		 * zero out %error.
		 */
		if (dp->dtsp_num_conditions != 0) {
			pred = FUNC1(DT_TOK_LNEG,
			    FUNC5());
		}
	} else {
		pred = FUNC2(DT_TOK_LAND,
		    FUNC1(DT_TOK_LNEG, FUNC5()),
		    FUNC4(condid));
	}
	FUNC3(dp,
	    FUNC0(dp->dtsp_pdescs, pred, stmts));
}