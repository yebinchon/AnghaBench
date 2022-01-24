#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_5__ {scalar_t__ dn_kind; int dn_flags; int /*<<< orphan*/  dn_reg; TYPE_4__* dn_ident; int /*<<< orphan*/ * dn_args; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
struct TYPE_6__ {int di_flags; int /*<<< orphan*/  di_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIF_INSTR_NOP ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIF_OP_BNE ; 
 scalar_t__ DIF_OP_LDGAA ; 
 scalar_t__ DIF_OP_LDTAA ; 
 scalar_t__ DIF_OP_STGAA ; 
 scalar_t__ DIF_OP_STTAA ; 
 int DT_IDFLG_DIFR ; 
 int DT_IDFLG_DIFW ; 
 int DT_IDFLG_LOCAL ; 
 int DT_IDFLG_TLS ; 
 scalar_t__ DT_LBL_NONE ; 
 int DT_NF_REF ; 
 scalar_t__ DT_NODE_VAR ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
	dif_instr_t instr;
	uint_t op;

	FUNC5(dnp->dn_kind == DT_NODE_VAR);
	FUNC5(!(dnp->dn_ident->di_flags & DT_IDFLG_LOCAL));
	FUNC5(dnp->dn_args != NULL);

	FUNC6(dnp->dn_ident, dnp->dn_args, dlp, drp);

	dnp->dn_reg = FUNC12(drp);

	if (dnp->dn_ident->di_flags & DT_IDFLG_TLS)
		op = DIF_OP_LDTAA;
	else
		op = DIF_OP_LDGAA;

	dnp->dn_ident->di_flags |= DT_IDFLG_DIFR;
	instr = FUNC2(op, dnp->dn_ident->di_id, dnp->dn_reg);
	FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));

	/*
	 * If the associative array is a pass-by-reference type, then we are
	 * loading its value as a pointer to either load or store through it.
	 * The array element in question may not have been faulted in yet, in
	 * which case DIF_OP_LD*AA will return zero.  We append an epilogue
	 * of instructions similar to the following:
	 *
	 *	  ld?aa	 id, %r1	! base ld?aa instruction above
	 *	  tst	 %r1		! start of epilogue
	 *   +--- bne	 label
	 *   |    setx	 size, %r1
	 *   |    allocs %r1, %r1
	 *   |    st?aa	 id, %r1
	 *   |    ld?aa	 id, %r1
	 *   v
	 * label: < rest of code >
	 *
	 * The idea is that we allocs a zero-filled chunk of scratch space and
	 * do a DIF_OP_ST*AA to fault in and initialize the array element, and
	 * then reload it to get the faulted-in address of the new variable
	 * storage.  This isn't cheap, but pass-by-ref associative array values
	 * are (thus far) uncommon and the allocs cost only occurs once.  If
	 * this path becomes important to DTrace users, we can improve things
	 * by adding a new DIF opcode to fault in associative array elements.
	 */
	if (dnp->dn_flags & DT_NF_REF) {
		uint_t stvop = op == DIF_OP_LDTAA ? DIF_OP_STTAA : DIF_OP_STGAA;
		uint_t label = FUNC10(dlp);

		instr = FUNC4(dnp->dn_reg);
		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));

		instr = FUNC1(DIF_OP_BNE, label);
		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));

		FUNC8(dlp, dnp->dn_reg, FUNC11(dnp));
		instr = FUNC0(dnp->dn_reg, dnp->dn_reg);
		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));

		dnp->dn_ident->di_flags |= DT_IDFLG_DIFW;
		instr = FUNC3(stvop, dnp->dn_ident->di_id, dnp->dn_reg);
		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));

		instr = FUNC2(op, dnp->dn_ident->di_id, dnp->dn_reg);
		FUNC9(dlp, FUNC7(DT_LBL_NONE, instr));

		FUNC9(dlp, FUNC7(label, DIF_INSTR_NOP));
	}
}