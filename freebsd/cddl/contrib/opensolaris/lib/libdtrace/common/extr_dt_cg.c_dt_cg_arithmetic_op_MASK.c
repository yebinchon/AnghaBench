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
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_6__ {scalar_t__ dn_op; int /*<<< orphan*/  dn_reg; struct TYPE_6__* dn_right; struct TYPE_6__* dn_left; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIF_OP_MUL ; 
 int /*<<< orphan*/  DIF_OP_UDIV ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 scalar_t__ DT_TOK_ADD ; 
 scalar_t__ DT_TOK_ADD_EQ ; 
 scalar_t__ DT_TOK_SUB ; 
 scalar_t__ DT_TOK_SUB_EQ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(dt_node_t *dnp, dt_irlist_t *dlp,
    dt_regset_t *drp, uint_t op)
{
	int is_ptr_op = (dnp->dn_op == DT_TOK_ADD || dnp->dn_op == DT_TOK_SUB ||
	    dnp->dn_op == DT_TOK_ADD_EQ || dnp->dn_op == DT_TOK_SUB_EQ);

	int lp_is_ptr = FUNC6(dnp->dn_left);
	int rp_is_ptr = FUNC6(dnp->dn_right);

	dif_instr_t instr;

	if (lp_is_ptr && rp_is_ptr) {
		FUNC1(dnp->dn_op == DT_TOK_SUB);
		is_ptr_op = 0;
	}

	FUNC2(dnp->dn_left, dlp, drp);
	if (is_ptr_op && rp_is_ptr)
		FUNC4(dnp, dlp, drp, DIF_OP_MUL, dnp->dn_left->dn_reg);

	FUNC2(dnp->dn_right, dlp, drp);
	if (is_ptr_op && lp_is_ptr)
		FUNC4(dnp, dlp, drp, DIF_OP_MUL, dnp->dn_right->dn_reg);

	instr = FUNC0(op, dnp->dn_left->dn_reg,
	    dnp->dn_right->dn_reg, dnp->dn_left->dn_reg);

	FUNC5(dlp, FUNC3(DT_LBL_NONE, instr));
	FUNC7(drp, dnp->dn_right->dn_reg);
	dnp->dn_reg = dnp->dn_left->dn_reg;

	if (lp_is_ptr && rp_is_ptr)
		FUNC4(dnp->dn_right,
		    dlp, drp, DIF_OP_UDIV, dnp->dn_reg);
}