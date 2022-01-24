#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_3__* dx_ident; } ;
typedef  TYPE_4__ dt_xlator_t ;
struct TYPE_18__ {int /*<<< orphan*/ * pcb_regs; int /*<<< orphan*/  pcb_ir; TYPE_6__* pcb_dret; int /*<<< orphan*/  pcb_jmpbuf; int /*<<< orphan*/ * pcb_strtab; int /*<<< orphan*/ * pcb_inttab; TYPE_2__* pcb_hdl; } ;
typedef  TYPE_5__ dt_pcb_t ;
struct TYPE_19__ {scalar_t__ dn_kind; int dn_reg; struct TYPE_19__* dn_membexpr; TYPE_4__* dn_membxlator; } ;
typedef  TYPE_6__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_ident_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
struct TYPE_20__ {int /*<<< orphan*/  pcb_hdl; } ;
struct TYPE_16__ {int di_id; int /*<<< orphan*/  di_flags; } ;
struct TYPE_14__ {int /*<<< orphan*/  dtc_difintregs; } ;
struct TYPE_15__ {TYPE_1__ dt_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DT_IDENT_XLPTR ; 
 int /*<<< orphan*/  DT_IDENT_XLSOU ; 
 int /*<<< orphan*/  DT_IDFLG_CGREG ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 scalar_t__ DT_NODE_MEMBER ; 
 int /*<<< orphan*/  D_CG_DYN ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* yypcb ; 

void
FUNC20(dt_pcb_t *pcb, dt_node_t *dnp)
{
	dif_instr_t instr;
	dt_xlator_t *dxp;
	dt_ident_t *idp;

	if (pcb->pcb_regs == NULL && (pcb->pcb_regs =
	    FUNC14(pcb->pcb_hdl->dt_conf.dtc_difintregs)) == NULL)
		FUNC19(pcb->pcb_jmpbuf, EDT_NOMEM);

	FUNC16(pcb->pcb_regs);
	(void) FUNC12(pcb->pcb_regs); /* allocate %r0 */

	if (pcb->pcb_inttab != NULL)
		FUNC7(pcb->pcb_inttab);

	if ((pcb->pcb_inttab = FUNC6(yypcb->pcb_hdl)) == NULL)
		FUNC19(pcb->pcb_jmpbuf, EDT_NOMEM);

	if (pcb->pcb_strtab != NULL)
		FUNC18(pcb->pcb_strtab);

	if ((pcb->pcb_strtab = FUNC17(BUFSIZ)) == NULL)
		FUNC19(pcb->pcb_jmpbuf, EDT_NOMEM);

	FUNC10(&pcb->pcb_ir);
	FUNC9(&pcb->pcb_ir);

	FUNC1(pcb->pcb_dret == NULL);
	pcb->pcb_dret = dnp;

	if (FUNC11(dnp, DT_IDENT_XLPTR) != NULL) {
		FUNC2(dnp, D_CG_DYN, "expression cannot evaluate to result "
		    "of a translated pointer\n");
	}

	/*
	 * If we're generating code for a translator body, assign the input
	 * parameter to the first available register (i.e. caller passes %r1).
	 */
	if (dnp->dn_kind == DT_NODE_MEMBER) {
		dxp = dnp->dn_membxlator;
		dnp = dnp->dn_membexpr;

		dxp->dx_ident->di_flags |= DT_IDFLG_CGREG;
		dxp->dx_ident->di_id = FUNC12(pcb->pcb_regs);
	}

	FUNC3(dnp, &pcb->pcb_ir, pcb->pcb_regs);

	if ((idp = FUNC11(dnp, DT_IDENT_XLSOU)) != NULL) {
		int reg = FUNC5(dnp, idp,
		    &pcb->pcb_ir, pcb->pcb_regs);
		FUNC15(pcb->pcb_regs, dnp->dn_reg);
		dnp->dn_reg = reg;
	}

	instr = FUNC0(dnp->dn_reg);
	FUNC15(pcb->pcb_regs, dnp->dn_reg);
	FUNC8(&pcb->pcb_ir, FUNC4(DT_LBL_NONE, instr));

	if (dnp->dn_kind == DT_NODE_MEMBER) {
		FUNC15(pcb->pcb_regs, dxp->dx_ident->di_id);
		dxp->dx_ident->di_id = 0;
		dxp->dx_ident->di_flags &= ~DT_IDFLG_CGREG;
	}

	FUNC15(pcb->pcb_regs, 0);
	FUNC13(pcb->pcb_regs);
}