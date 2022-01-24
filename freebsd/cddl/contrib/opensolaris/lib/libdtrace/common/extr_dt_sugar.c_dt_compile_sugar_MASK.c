#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {void* dt_has_sugar; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_16__ {scalar_t__ dtsp_num_ifs; scalar_t__ dtsp_num_conditions; TYPE_3__* dtsp_clause_list; int /*<<< orphan*/  dtsp_pdescs; TYPE_1__* dtsp_dtp; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ dt_sugar_parse_t ;
struct TYPE_17__ {int /*<<< orphan*/ * dn_list; int /*<<< orphan*/ * dn_acts; int /*<<< orphan*/ * dn_pred; int /*<<< orphan*/  dn_pdescs; } ;
typedef  TYPE_3__ dt_node_t ;

/* Variables and functions */
 void* B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 void* yyintdecimal ; 
 scalar_t__ yyintprefix ; 
 char* yyintsuffix ; 

dt_node_t *
FUNC9(dtrace_hdl_t *dtp, dt_node_t *clause)
{
	dt_sugar_parse_t dp = { 0 };
	int condid = 0;

	dp.dtsp_dtp = dtp;
	dp.dtsp_pdescs = clause->dn_pdescs;

	/* make dt_node_int() generate an "int"-typed integer */
	yyintdecimal = B_TRUE;
	yyintsuffix[0] = '\0';
	yyintprefix = 0;

	FUNC7(&dp, clause);

	if (dp.dtsp_num_ifs == 0 && dp.dtsp_num_conditions == 0) {
		/*
		 * There is nothing that modifies the number of clauses.  Use
		 * the existing clause as-is, with its predicate intact.  This
		 * ensures that in the absence of D sugar, the body of the
		 * clause can create a variable that is referenced in the
		 * predicate.
		 */
		FUNC1(&dp, FUNC0(clause->dn_pdescs,
		    clause->dn_pred, clause->dn_acts));
	} else {
		if (clause->dn_pred != NULL) {
			condid = FUNC5(&dp,
			    clause->dn_pred, condid);
		}

		if (clause->dn_acts == NULL) {
			/*
			 * dt_sugar_visit_stmts() does not emit a clause with
			 * an empty body (e.g. if there's an empty "if" body),
			 * but we need the empty body here so that we
			 * continue to get the default tracing action.
			 */
			FUNC3(&dp, condid, NULL);
		} else {
			FUNC8(&dp, clause->dn_acts, condid);
		}
	}

	if (dp.dtsp_num_conditions != 0) {
		FUNC6(&dp,
		    FUNC4(&dp));
	}

	if (dp.dtsp_clause_list != NULL &&
	    dp.dtsp_clause_list->dn_list != NULL && !dtp->dt_has_sugar) {
		dtp->dt_has_sugar = B_TRUE;
		FUNC6(&dp, FUNC2());
	}
	return (dp.dtsp_clause_list);
}