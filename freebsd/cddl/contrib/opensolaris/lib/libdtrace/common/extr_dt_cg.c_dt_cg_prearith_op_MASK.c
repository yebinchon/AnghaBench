#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_12__ {int dn_reg; TYPE_1__* dn_left; TYPE_8__* dn_child; int /*<<< orphan*/  dn_type; int /*<<< orphan*/ * dn_ctfp; } ;
typedef  TYPE_2__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
struct TYPE_13__ {int /*<<< orphan*/  di_id; int /*<<< orphan*/  di_flags; } ;
typedef  TYPE_3__ dt_ident_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_14__ {int dn_reg; scalar_t__ dn_kind; int dn_flags; int /*<<< orphan*/  dn_ident; } ;
struct TYPE_11__ {int dn_flags; } ;

/* Variables and functions */
 scalar_t__ CTF_K_POINTER ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DT_IDFLG_DIFW ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 int DT_NF_LVALUE ; 
 int DT_NF_REF ; 
 int DT_NF_WRITABLE ; 
 scalar_t__ DT_NODE_VAR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC17(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp, uint_t op)
{
	ctf_file_t *ctfp = dnp->dn_ctfp;
	dif_instr_t instr;
	ctf_id_t type;
	ssize_t size = 1;
	int reg;

	if (FUNC14(dnp)) {
		type = FUNC5(ctfp, dnp->dn_type);
		FUNC2(FUNC3(ctfp, type) == CTF_K_POINTER);
		size = FUNC6(ctfp, FUNC4(ctfp, type));
	}

	FUNC7(dnp->dn_child, dlp, drp);
	dnp->dn_reg = dnp->dn_child->dn_reg;

	reg = FUNC15(drp);
	FUNC9(dlp, reg, size);

	instr = FUNC0(op, dnp->dn_reg, reg, dnp->dn_reg);
	FUNC13(dlp, FUNC8(DT_LBL_NONE, instr));
	FUNC16(drp, reg);

	/*
	 * If we are modifying a variable, generate an stv instruction from
	 * the variable specified by the identifier.  If we are storing to a
	 * memory address, generate code again for the left-hand side using
	 * DT_NF_REF to get the address, and then generate a store to it.
	 * In both paths, we store the value in dnp->dn_reg (the new value).
	 */
	if (dnp->dn_child->dn_kind == DT_NODE_VAR) {
		dt_ident_t *idp = FUNC12(dnp->dn_child->dn_ident);

		idp->di_flags |= DT_IDFLG_DIFW;
		instr = FUNC1(FUNC11(idp),
		    idp->di_id, dnp->dn_reg);
		FUNC13(dlp, FUNC8(DT_LBL_NONE, instr));
	} else {
		uint_t rbit = dnp->dn_child->dn_flags & DT_NF_REF;

		FUNC2(dnp->dn_child->dn_flags & DT_NF_WRITABLE);
		FUNC2(dnp->dn_child->dn_flags & DT_NF_LVALUE);

		dnp->dn_child->dn_flags |= DT_NF_REF; /* force pass-by-ref */
		FUNC7(dnp->dn_child, dlp, drp);

		FUNC10(dnp, dlp, drp, dnp->dn_child);
		FUNC16(drp, dnp->dn_child->dn_reg);

		dnp->dn_left->dn_flags &= ~DT_NF_REF;
		dnp->dn_left->dn_flags |= rbit;
	}
}