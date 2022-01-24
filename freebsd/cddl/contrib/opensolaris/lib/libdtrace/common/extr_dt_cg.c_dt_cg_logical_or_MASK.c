#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_4__ {int /*<<< orphan*/  dn_reg; TYPE_2__* dn_right; TYPE_2__* dn_left; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
struct TYPE_5__ {int /*<<< orphan*/  dn_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIF_INSTR_NOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIF_OP_BA ; 
 int /*<<< orphan*/  DIF_OP_BE ; 
 int /*<<< orphan*/  DIF_OP_BNE ; 
 int /*<<< orphan*/  DIF_REG_R0 ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
	uint_t lbl_true = FUNC7(dlp);
	uint_t lbl_false = FUNC7(dlp);
	uint_t lbl_post = FUNC7(dlp);

	dif_instr_t instr;

	FUNC3(dnp->dn_left, dlp, drp);
	instr = FUNC2(dnp->dn_left->dn_reg);
	FUNC6(dlp, FUNC4(DT_LBL_NONE, instr));
	FUNC8(drp, dnp->dn_left->dn_reg);

	instr = FUNC0(DIF_OP_BNE, lbl_true);
	FUNC6(dlp, FUNC4(DT_LBL_NONE, instr));

	FUNC3(dnp->dn_right, dlp, drp);
	instr = FUNC2(dnp->dn_right->dn_reg);
	FUNC6(dlp, FUNC4(DT_LBL_NONE, instr));
	dnp->dn_reg = dnp->dn_right->dn_reg;

	instr = FUNC0(DIF_OP_BE, lbl_false);
	FUNC6(dlp, FUNC4(DT_LBL_NONE, instr));

	FUNC5(dlp, NULL, lbl_true, dnp->dn_reg, 1);

	instr = FUNC0(DIF_OP_BA, lbl_post);
	FUNC6(dlp, FUNC4(DT_LBL_NONE, instr));

	instr = FUNC1(DIF_REG_R0, dnp->dn_reg);
	FUNC6(dlp, FUNC4(lbl_false, instr));

	FUNC6(dlp, FUNC4(lbl_post, DIF_INSTR_NOP));
}