#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int dtxl_dreg; int /*<<< orphan*/  dtxl_sreg; int /*<<< orphan*/ * dtxl_drp; int /*<<< orphan*/ * dtxl_dlp; int /*<<< orphan*/ * dtxl_idp; } ;
typedef  TYPE_2__ dt_xlmemb_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_8__ {TYPE_1__* dn_ident; int /*<<< orphan*/  dn_reg; } ;
typedef  TYPE_3__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
typedef  int /*<<< orphan*/  dt_ident_t ;
struct TYPE_6__ {int /*<<< orphan*/  di_type; int /*<<< orphan*/  di_ctfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DIF_INSTR_FLUSHTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DIF_OP_PUSHTV ; 
 int /*<<< orphan*/  DIF_REG_R0 ; 
 int /*<<< orphan*/  DIF_SUBR_ALLOCA ; 
 int /*<<< orphan*/  DIF_TYPE_CTF ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  dt_cg_xlate_member ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(dt_node_t *dnp, dt_ident_t *idp, dt_irlist_t *dlp,
    dt_regset_t *drp)
{
	dt_xlmemb_t dlm;
	uint32_t instr;
	int dreg;
	size_t size;

	dreg = FUNC7(drp);
	size = FUNC3(dnp->dn_ident->di_ctfp, dnp->dn_ident->di_type);

	/* Call alloca() to create the buffer. */
	FUNC5(dlp, dreg, size);

	FUNC6(dlp, FUNC4(DT_LBL_NONE, DIF_INSTR_FLUSHTS));

	instr = FUNC1(DIF_OP_PUSHTV, DIF_TYPE_CTF, DIF_REG_R0, dreg);
	FUNC6(dlp, FUNC4(DT_LBL_NONE, instr));

	instr = FUNC0(DIF_SUBR_ALLOCA, dreg);
	FUNC6(dlp, FUNC4(DT_LBL_NONE, instr));

	/* Generate the translation for each member. */
	dlm.dtxl_idp = idp;
	dlm.dtxl_dlp = dlp;
	dlm.dtxl_drp = drp;
	dlm.dtxl_sreg = dnp->dn_reg;
	dlm.dtxl_dreg = dreg;
	(void) FUNC2(dnp->dn_ident->di_ctfp,
	    dnp->dn_ident->di_type, dt_cg_xlate_member,
	    &dlm);

	return (dreg);
}