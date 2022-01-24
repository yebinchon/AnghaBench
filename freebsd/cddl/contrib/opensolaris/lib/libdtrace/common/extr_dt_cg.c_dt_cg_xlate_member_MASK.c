#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ulong_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  dtxl_dreg; scalar_t__ dtxl_sreg; int /*<<< orphan*/ * dtxl_drp; int /*<<< orphan*/ * dtxl_dlp; TYPE_5__* dtxl_idp; } ;
typedef  TYPE_2__ dt_xlmemb_t ;
struct TYPE_13__ {TYPE_1__* dx_ident; } ;
typedef  TYPE_3__ dt_xlator_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_14__ {TYPE_8__* dn_membexpr; } ;
typedef  TYPE_4__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
struct TYPE_15__ {TYPE_3__* di_data; } ;
typedef  TYPE_5__ dt_ident_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
struct TYPE_16__ {int dn_reg; int /*<<< orphan*/  dn_type; int /*<<< orphan*/  dn_ctfp; } ;
struct TYPE_11__ {scalar_t__ di_id; int /*<<< orphan*/  di_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  DIF_INSTR_FLUSHTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  DIF_OP_ADD ; 
 int /*<<< orphan*/  DIF_OP_PUSHTV ; 
 int /*<<< orphan*/  DIF_OP_STB ; 
 int /*<<< orphan*/  DIF_OP_STH ; 
 int /*<<< orphan*/  DIF_OP_STW ; 
 int /*<<< orphan*/  DIF_OP_STX ; 
 int /*<<< orphan*/  DIF_REG_R0 ; 
 int /*<<< orphan*/  DIF_SUBR_BCOPY ; 
 int /*<<< orphan*/  DIF_TYPE_CTF ; 
 int /*<<< orphan*/  DT_IDFLG_CGREG ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 size_t NBBY ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_8__*) ; 
 scalar_t__ FUNC11 (TYPE_8__*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC14 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static int
FUNC16(const char *name, ctf_id_t type, ulong_t off, void *arg)
{
	dt_xlmemb_t *dx = arg;
	dt_ident_t *idp = dx->dtxl_idp;
	dt_irlist_t *dlp = dx->dtxl_dlp;
	dt_regset_t *drp = dx->dtxl_drp;

	dt_node_t *mnp;
	dt_xlator_t *dxp;

	int reg, treg;
	uint32_t instr;
	size_t size;

	/* Generate code for the translation. */
	dxp = idp->di_data;
	mnp = FUNC14(dxp, name);

	/* If there's no translator for the given member, skip it. */
	if (mnp == NULL)
		return (0);

	dxp->dx_ident->di_flags |= DT_IDFLG_CGREG;
	dxp->dx_ident->di_id = dx->dtxl_sreg;

	FUNC6(mnp->dn_membexpr, dlp, drp);

	dxp->dx_ident->di_flags &= ~DT_IDFLG_CGREG;
	dxp->dx_ident->di_id = 0;

	treg = mnp->dn_membexpr->dn_reg;

	/* Compute the offset into our buffer and store the result there. */
	reg = FUNC12(drp);

	FUNC8(dlp, reg, off / NBBY);
	instr = FUNC2(DIF_OP_ADD, dx->dtxl_dreg, reg, reg);
	FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));

	size = FUNC5(mnp->dn_membexpr->dn_ctfp,
	    mnp->dn_membexpr->dn_type);
	if (FUNC10(mnp->dn_membexpr)) {
		/*
		 * Copying scalars is simple.
		 */
		switch (size) {
		case 1:
			instr = FUNC4(DIF_OP_STB, treg, reg);
			break;
		case 2:
			instr = FUNC4(DIF_OP_STH, treg, reg);
			break;
		case 4:
			instr = FUNC4(DIF_OP_STW, treg, reg);
			break;
		case 8:
			instr = FUNC4(DIF_OP_STX, treg, reg);
			break;
		default:
			FUNC15(D_UNKNOWN, "internal error -- unexpected "
			    "size: %lu\n", (ulong_t)size);
		}

		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));

	} else if (FUNC11(mnp->dn_membexpr)) {
		int szreg;

		/*
		 * Use the copys instruction for strings.
		 */
		szreg = FUNC12(drp);
		FUNC8(dlp, szreg, size);
		instr = FUNC1(treg, szreg, reg);
		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));
		FUNC13(drp, szreg);
	} else {
		int szreg;

		/*
		 * If it's anything else then we'll just bcopy it.
		 */
		szreg = FUNC12(drp);
		FUNC8(dlp, szreg, size);
		FUNC9(dlp,
		    FUNC7(DT_LBL_NONE, DIF_INSTR_FLUSHTS));
		instr = FUNC3(DIF_OP_PUSHTV, DIF_TYPE_CTF,
		    DIF_REG_R0, treg);
		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));
		instr = FUNC3(DIF_OP_PUSHTV, DIF_TYPE_CTF,
		    DIF_REG_R0, reg);
		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));
		instr = FUNC3(DIF_OP_PUSHTV, DIF_TYPE_CTF,
		    DIF_REG_R0, szreg);
		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));
		instr = FUNC0(DIF_SUBR_BCOPY, szreg);
		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));
		FUNC13(drp, szreg);
	}

	FUNC13(drp, reg);
	FUNC13(drp, treg);

	return (0);
}