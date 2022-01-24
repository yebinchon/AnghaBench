#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  n ;
struct TYPE_20__ {scalar_t__ dtt_ctfp; scalar_t__ dtt_type; } ;
typedef  TYPE_2__ dtrace_typeinfo_t ;
struct TYPE_21__ {scalar_t__ ds_ctfp; int /*<<< orphan*/  ds_type; } ;
typedef  TYPE_3__ dt_scope_t ;
struct TYPE_22__ {scalar_t__ dn_kind; scalar_t__ dn_value; } ;
typedef  TYPE_4__ dt_node_t ;
struct TYPE_23__ {scalar_t__ dd_kind; int /*<<< orphan*/ * dd_name; } ;
typedef  TYPE_5__ dt_decl_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
struct TYPE_24__ {scalar_t__ cte_bits; scalar_t__ cte_offset; } ;
typedef  TYPE_6__ ctf_encoding_t ;
struct TYPE_19__ {char* ds_ident; TYPE_5__* ds_decl; TYPE_3__* ds_next; } ;
struct TYPE_25__ {TYPE_1__ pcb_dstack; int /*<<< orphan*/  pcb_hdl; int /*<<< orphan*/  pcb_jmpbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ADD_NONROOT ; 
 scalar_t__ CTF_ERR ; 
 scalar_t__ CTF_K_FORWARD ; 
 scalar_t__ CTF_K_INTEGER ; 
 scalar_t__ CTF_K_STRUCT ; 
 scalar_t__ CTF_K_UNION ; 
 scalar_t__ CTF_K_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DT_IDFLG_REF ; 
 scalar_t__ DT_NODE_INT ; 
 int DT_TYPE_NAMELEN ; 
 int /*<<< orphan*/  D_DECL_BFCONST ; 
 int /*<<< orphan*/  D_DECL_BFSIZE ; 
 int /*<<< orphan*/  D_DECL_BFTYPE ; 
 int /*<<< orphan*/  D_DECL_DYNOBJ ; 
 int /*<<< orphan*/  D_DECL_INCOMPLETE ; 
 int /*<<< orphan*/  D_DECL_MNAME ; 
 int /*<<< orphan*/  D_DECL_SCOPE ; 
 int /*<<< orphan*/  D_DECL_VOIDOBJ ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 int /*<<< orphan*/  EDT_COMPILER ; 
 int /*<<< orphan*/  EDT_NODECL ; 
 int /*<<< orphan*/  EDT_NOSCOPE ; 
 scalar_t__ FUNC2 (TYPE_6__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,TYPE_6__*) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (TYPE_5__*,TYPE_2__*) ; 
 TYPE_4__* FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 scalar_t__ FUNC20 (TYPE_4__*) ; 
 char const* FUNC21 (scalar_t__,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (char*,char) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_7__* yypcb ; 

void
FUNC26(dt_node_t *dnp)
{
	dt_scope_t *dsp = yypcb->pcb_dstack.ds_next;
	dt_decl_t *ddp = yypcb->pcb_dstack.ds_decl;
	char *ident = yypcb->pcb_dstack.ds_ident;

	const char *idname = ident ? ident : "(anon)";
	char n[DT_TYPE_NAMELEN];

	dtrace_typeinfo_t dtt;
	ctf_encoding_t cte;
	ctf_id_t base;
	uint_t kind;
	ssize_t size;

	if (dsp == NULL)
		FUNC23(yypcb->pcb_jmpbuf, EDT_NOSCOPE);

	if (ddp == NULL)
		FUNC23(yypcb->pcb_jmpbuf, EDT_NODECL);

	if (dnp == NULL && ident == NULL)
		FUNC25(D_DECL_MNAME, "member declaration requires a name\n");

	if (ddp->dd_kind == CTF_K_UNKNOWN && ddp->dd_name == NULL) {
		ddp->dd_kind = CTF_K_INTEGER;
		(void) FUNC15(ddp);
	}

	if (FUNC17(ddp, &dtt) != 0)
		FUNC23(yypcb->pcb_jmpbuf, EDT_COMPILER);

	if (ident != NULL && FUNC24(ident, '`') != NULL) {
		FUNC25(D_DECL_SCOPE, "D scoping operator may not be used "
		    "in a member name (%s)\n", ident);
	}

	if (dtt.dtt_ctfp == FUNC0(yypcb->pcb_hdl) &&
	    dtt.dtt_type == FUNC1(yypcb->pcb_hdl)) {
		FUNC25(D_DECL_DYNOBJ,
		    "cannot have dynamic member: %s\n", ident);
	}

	base = FUNC12(dtt.dtt_ctfp, dtt.dtt_type);
	kind = FUNC10(dtt.dtt_ctfp, base);
	size = FUNC13(dtt.dtt_ctfp, base);

	if (kind == CTF_K_FORWARD || ((kind == CTF_K_STRUCT ||
	    kind == CTF_K_UNION) && size == 0)) {
		FUNC25(D_DECL_INCOMPLETE, "incomplete struct/union/enum %s: "
		    "%s\n", FUNC21(dtt.dtt_ctfp, dtt.dtt_type,
		    n, sizeof (n)), ident);
	}

	if (size == 0)
		FUNC25(D_DECL_VOIDOBJ, "cannot have void member: %s\n", ident);

	/*
	 * If a bit-field qualifier was part of the member declaration, create
	 * a new integer type of the same name and attributes as the base type
	 * and size equal to the specified number of bits.  We reset 'dtt' to
	 * refer to this new bit-field type and continue on to add the member.
	 */
	if (dnp != NULL) {
		dnp = FUNC18(dnp, DT_IDFLG_REF);

		/*
		 * A bit-field member with no declarator is permitted to have
		 * size zero and indicates that no more fields are to be packed
		 * into the current storage unit.  We ignore these directives
		 * as the underlying ctf code currently does so for all fields.
		 */
		if (ident == NULL && dnp->dn_kind == DT_NODE_INT &&
		    dnp->dn_value == 0) {
			FUNC19(dnp);
			goto done;
		}

		if (FUNC20(dnp) == 0) {
			FUNC25(D_DECL_BFCONST, "positive integral constant "
			    "expression expected as bit-field size\n");
		}

		if (FUNC10(dtt.dtt_ctfp, base) != CTF_K_INTEGER ||
		    FUNC9(dtt.dtt_ctfp, base, &cte) == CTF_ERR ||
		    FUNC2(cte)) {
			FUNC25(D_DECL_BFTYPE, "invalid type for "
			    "bit-field: %s\n", idname);
		}

		if (dnp->dn_value > cte.cte_bits) {
			FUNC25(D_DECL_BFSIZE, "bit-field too big "
			    "for type: %s\n", idname);
		}

		cte.cte_offset = 0;
		cte.cte_bits = (uint_t)dnp->dn_value;

		dtt.dtt_type = FUNC3(dsp->ds_ctfp,
		    CTF_ADD_NONROOT, FUNC11(dtt.dtt_ctfp,
		    dtt.dtt_type, n, sizeof (n)), &cte);

		if (dtt.dtt_type == CTF_ERR ||
		    FUNC14(dsp->ds_ctfp) == CTF_ERR) {
			FUNC25(D_UNKNOWN, "failed to create type for "
			    "member '%s': %s\n", idname,
			    FUNC6(FUNC7(dsp->ds_ctfp)));
		}

		dtt.dtt_ctfp = dsp->ds_ctfp;
		FUNC19(dnp);
	}

	/*
	 * If the member type is not defined in the same CTF container as the
	 * one associated with the current scope (i.e. the container for the
	 * struct or union itself) or its parent, copy the member type into
	 * this container and reset dtt to refer to the copied type.
	 */
	if (dtt.dtt_ctfp != dsp->ds_ctfp &&
	    dtt.dtt_ctfp != FUNC8(dsp->ds_ctfp)) {

		dtt.dtt_type = FUNC5(dsp->ds_ctfp,
		    dtt.dtt_ctfp, dtt.dtt_type);
		dtt.dtt_ctfp = dsp->ds_ctfp;

		if (dtt.dtt_type == CTF_ERR ||
		    FUNC14(dtt.dtt_ctfp) == CTF_ERR) {
			FUNC25(D_UNKNOWN, "failed to copy type of '%s': %s\n",
			    idname, FUNC6(FUNC7(dtt.dtt_ctfp)));
		}
	}

	if (FUNC4(dsp->ds_ctfp, dsp->ds_type,
	    ident, dtt.dtt_type) == CTF_ERR) {
		FUNC25(D_UNKNOWN, "failed to define member '%s': %s\n",
		    idname, FUNC6(FUNC7(dsp->ds_ctfp)));
	}

done:
	FUNC22(ident);
	yypcb->pcb_dstack.ds_ident = NULL;
	FUNC16();
}