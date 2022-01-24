#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_7__ {int /*<<< orphan*/  dn_reg; TYPE_6__* dn_left; TYPE_6__* dn_right; TYPE_6__* dn_expr; } ;
typedef  TYPE_1__ dt_node_t ;
struct TYPE_8__ {void* di_instr; } ;
typedef  TYPE_2__ dt_irnode_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
typedef  void* dif_instr_t ;
struct TYPE_9__ {int /*<<< orphan*/  dn_reg; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* DIF_INSTR_NOP ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIF_OP_BA ; 
 int /*<<< orphan*/  DIF_OP_BE ; 
 int /*<<< orphan*/  DIF_REG_R0 ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
	uint_t lbl_false = FUNC6(dlp);
	uint_t lbl_post = FUNC6(dlp);

	dif_instr_t instr;
	dt_irnode_t *dip;

	FUNC3(dnp->dn_expr, dlp, drp);
	instr = FUNC2(dnp->dn_expr->dn_reg);
	FUNC5(dlp, FUNC4(DT_LBL_NONE, instr));
	FUNC7(drp, dnp->dn_expr->dn_reg);

	instr = FUNC0(DIF_OP_BE, lbl_false);
	FUNC5(dlp, FUNC4(DT_LBL_NONE, instr));

	FUNC3(dnp->dn_left, dlp, drp);
	instr = FUNC1(dnp->dn_left->dn_reg, DIF_REG_R0);
	dip = FUNC4(DT_LBL_NONE, instr); /* save dip for below */
	FUNC5(dlp, dip);
	FUNC7(drp, dnp->dn_left->dn_reg);

	instr = FUNC0(DIF_OP_BA, lbl_post);
	FUNC5(dlp, FUNC4(DT_LBL_NONE, instr));

	FUNC5(dlp, FUNC4(lbl_false, DIF_INSTR_NOP));
	FUNC3(dnp->dn_right, dlp, drp);
	dnp->dn_reg = dnp->dn_right->dn_reg;

	/*
	 * Now that dn_reg is assigned, reach back and patch the correct MOV
	 * instruction into the tail of dn_left.  We know dn_reg was unused
	 * at that point because otherwise dn_right couldn't have allocated it.
	 */
	dip->di_instr = FUNC1(dnp->dn_left->dn_reg, dnp->dn_reg);
	FUNC5(dlp, FUNC4(lbl_post, DIF_INSTR_NOP));
}