#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uintmax_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_9__ {size_t* pr_mapping; } ;
typedef  TYPE_1__ dt_probe_t ;
struct TYPE_10__ {scalar_t__ dn_kind; int dn_reg; int dn_flags; TYPE_7__* dn_args; TYPE_3__* dn_ident; } ;
typedef  TYPE_2__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
struct TYPE_11__ {int di_flags; scalar_t__ di_id; scalar_t__ di_kind; int /*<<< orphan*/  di_data; } ;
typedef  TYPE_3__ dt_ident_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
struct TYPE_13__ {size_t dn_value; scalar_t__ dn_kind; int dn_reg; int /*<<< orphan*/ * dn_list; } ;
struct TYPE_12__ {TYPE_1__* pcb_probe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  DIF_OP_LDGA ; 
 int /*<<< orphan*/  DIF_OP_LDTA ; 
 int /*<<< orphan*/  DIF_OP_SLL ; 
 int /*<<< orphan*/  DIF_OP_SRA ; 
 int /*<<< orphan*/  DIF_OP_SRL ; 
 scalar_t__ DIF_VAR_ARGS ; 
 scalar_t__ DT_IDENT_XLPTR ; 
 scalar_t__ DT_IDENT_XLSOU ; 
 int DT_IDFLG_DIFR ; 
 int DT_IDFLG_LOCAL ; 
 int DT_IDFLG_TLS ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 int DT_NF_SIGNED ; 
 scalar_t__ DT_NODE_INT ; 
 scalar_t__ DT_NODE_VAR ; 
 int NBBY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 size_t FUNC8 (TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_4__* yypcb ; 

__attribute__((used)) static void
FUNC12(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
	dt_probe_t *prp = yypcb->pcb_probe;
	uintmax_t saved = dnp->dn_args->dn_value;
	dt_ident_t *idp = dnp->dn_ident;

	dif_instr_t instr;
	uint_t op;
	size_t size;
	int reg, n;

	FUNC2(dnp->dn_kind == DT_NODE_VAR);
	FUNC2(!(idp->di_flags & DT_IDFLG_LOCAL));

	FUNC2(dnp->dn_args->dn_kind == DT_NODE_INT);
	FUNC2(dnp->dn_args->dn_list == NULL);

	/*
	 * If this is a reference in the args[] array, temporarily modify the
	 * array index according to the static argument mapping (if any),
	 * unless the argument reference is provided by a dynamic translator.
	 * If we're using a dynamic translator for args[], then just set dn_reg
	 * to an invalid reg and return: DIF_OP_XLARG will fetch the arg later.
	 */
	if (idp->di_id == DIF_VAR_ARGS) {
		if ((idp->di_kind == DT_IDENT_XLPTR ||
		    idp->di_kind == DT_IDENT_XLSOU) &&
		    FUNC11(idp->di_data)) {
			dnp->dn_reg = -1;
			return;
		}
		dnp->dn_args->dn_value = prp->pr_mapping[saved];
	}

	FUNC3(dnp->dn_args, dlp, drp);
	dnp->dn_args->dn_value = saved;

	dnp->dn_reg = dnp->dn_args->dn_reg;

	if (idp->di_flags & DT_IDFLG_TLS)
		op = DIF_OP_LDTA;
	else
		op = DIF_OP_LDGA;

	idp->di_flags |= DT_IDFLG_DIFR;

	instr = FUNC1(op, idp->di_id,
	    dnp->dn_args->dn_reg, dnp->dn_reg);

	FUNC6(dlp, FUNC4(DT_LBL_NONE, instr));

	/*
	 * If this is a reference to the args[] array, we need to take the
	 * additional step of explicitly eliminating any bits larger than the
	 * type size: the DIF interpreter in the kernel will always give us
	 * the raw (64-bit) argument value, and any bits larger than the type
	 * size may be junk.  As a practical matter, this arises only on 64-bit
	 * architectures and only when the argument index is larger than the
	 * number of arguments passed directly to DTrace: if a 8-, 16- or
	 * 32-bit argument must be retrieved from the stack, it is possible
	 * (and it some cases, likely) that the upper bits will be garbage.
	 */
	if (idp->di_id != DIF_VAR_ARGS || !FUNC7(dnp))
		return;

	if ((size = FUNC8(dnp)) == sizeof (uint64_t))
		return;

	reg = FUNC9(drp);
	FUNC2(size < sizeof (uint64_t));
	n = sizeof (uint64_t) * NBBY - size * NBBY;

	FUNC5(dlp, reg, n);

	instr = FUNC0(DIF_OP_SLL, dnp->dn_reg, reg, dnp->dn_reg);
	FUNC6(dlp, FUNC4(DT_LBL_NONE, instr));

	instr = FUNC0((dnp->dn_flags & DT_NF_SIGNED) ?
	    DIF_OP_SRA : DIF_OP_SRL, dnp->dn_reg, reg, dnp->dn_reg);

	FUNC6(dlp, FUNC4(DT_LBL_NONE, instr));
	FUNC10(drp, reg);
}