#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
struct TYPE_18__ {int /*<<< orphan*/  dn_attr; struct TYPE_18__* dn_expr; int /*<<< orphan*/  dn_type; int /*<<< orphan*/ * dn_ctfp; struct TYPE_18__* dn_right; struct TYPE_18__* dn_left; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_19__ {int /*<<< orphan*/  pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DT_IDFLG_REF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D_OP_ACT ; 
 int /*<<< orphan*/  D_OP_DYN ; 
 int /*<<< orphan*/  D_OP_INCOMPAT ; 
 int /*<<< orphan*/  D_OP_SCALAR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* yypcb ; 

__attribute__((used)) static dt_node_t *
FUNC16(dt_node_t *dnp, uint_t idflags)
{
	dt_node_t *lp, *rp;
	ctf_file_t *ctfp;
	ctf_id_t type;

	dnp->dn_expr = FUNC5(dnp->dn_expr, DT_IDFLG_REF);
	lp = dnp->dn_left = FUNC5(dnp->dn_left, DT_IDFLG_REF);
	rp = dnp->dn_right = FUNC5(dnp->dn_right, DT_IDFLG_REF);

	if (!FUNC10(dnp->dn_expr)) {
		FUNC15(D_OP_SCALAR,
		    "operator ?: expression must be of scalar type\n");
	}

	if (FUNC7(lp) || FUNC7(rp)) {
		FUNC15(D_OP_DYN,
		    "operator ?: operands cannot be of dynamic type\n");
	}

	/*
	 * The rules for type checking for the ternary operator are complex and
	 * are described in the ANSI-C spec (see K&R[A7.16]).  We implement
	 * the various tests in order from least to most expensive.
	 */
	if (FUNC2(lp->dn_ctfp, lp->dn_type,
	    rp->dn_ctfp, rp->dn_type)) {
		ctfp = lp->dn_ctfp;
		type = lp->dn_type;
	} else if (FUNC8(lp) && FUNC8(rp)) {
		FUNC14(lp, rp, &ctfp, &type);
	} else if (FUNC11(lp) && FUNC11(rp) &&
	    (FUNC12(lp) || FUNC12(rp))) {
		ctfp = FUNC0(yypcb->pcb_hdl);
		type = FUNC1(yypcb->pcb_hdl);
	} else if (FUNC9(lp, rp, &ctfp, &type) == 0) {
		FUNC15(D_OP_INCOMPAT,
		    "operator ?: operands must have compatible types\n");
	}

	if (FUNC6(lp) || FUNC6(rp)) {
		FUNC15(D_OP_ACT, "action cannot be "
		    "used in a conditional context\n");
	}

	FUNC13(dnp, ctfp, type, B_FALSE);
	FUNC4(dnp, FUNC3(dnp->dn_expr->dn_attr,
	    FUNC3(lp->dn_attr, rp->dn_attr)));

	return (dnp);
}