#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ intmax_t ;
struct TYPE_22__ {int /*<<< orphan*/  dt_gen; int /*<<< orphan*/  dt_globals; TYPE_3__* dt_ddefs; } ;
typedef  TYPE_4__ dtrace_hdl_t ;
struct TYPE_23__ {int ds_enumval; scalar_t__ ds_ctfp; int /*<<< orphan*/  ds_type; TYPE_2__* ds_decl; } ;
typedef  TYPE_5__ dt_scope_t ;
struct TYPE_24__ {scalar_t__ dn_kind; struct TYPE_24__* dn_link; scalar_t__ dn_value; int /*<<< orphan*/  dn_string; } ;
typedef  TYPE_6__ dt_node_t ;
struct TYPE_25__ {TYPE_6__* din_root; TYPE_6__* din_list; } ;
typedef  TYPE_7__ dt_idnode_t ;
struct TYPE_26__ {scalar_t__ di_ctfp; int /*<<< orphan*/  di_type; TYPE_7__* di_iarg; } ;
typedef  TYPE_8__ dt_ident_t ;
struct TYPE_19__ {TYPE_5__* ds_next; } ;
struct TYPE_27__ {TYPE_6__* pcb_list; int /*<<< orphan*/  pcb_jmpbuf; int /*<<< orphan*/  pcb_globals; TYPE_4__* pcb_hdl; TYPE_1__ pcb_dstack; } ;
struct TYPE_21__ {scalar_t__ dm_ctfp; } ;
struct TYPE_20__ {scalar_t__ dd_kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ CTF_ERR ; 
 scalar_t__ CTF_K_ENUM ; 
 int /*<<< orphan*/  DT_IDENT_ENUM ; 
 int DT_IDFLG_INLINE ; 
 int DT_IDFLG_REF ; 
 scalar_t__ DT_NODE_IDENT ; 
 scalar_t__ DT_NODE_INT ; 
 int /*<<< orphan*/  D_DECL_ENCONST ; 
 int /*<<< orphan*/  D_DECL_ENOFLOW ; 
 int /*<<< orphan*/  D_DECL_IDRED ; 
 int /*<<< orphan*/  D_DECL_SCOPE ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  EDT_NOSCOPE ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ INT_MIN ; 
 int /*<<< orphan*/  _dtrace_defattr ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 TYPE_8__* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dt_idops_inline ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 TYPE_6__* FUNC11 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 TYPE_6__* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC17 (int) ; 
 int /*<<< orphan*/ * FUNC18 (char*,char) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ yyintdecimal ; 
 scalar_t__ yyintprefix ; 
 char* yyintsuffix ; 
 TYPE_9__* yypcb ; 

void
FUNC22(char *s, dt_node_t *dnp)
{
	dt_scope_t *dsp = yypcb->pcb_dstack.ds_next;
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;

	dt_idnode_t *inp;
	dt_ident_t *idp;
	char *name;
	int value;

	name = FUNC0(FUNC20(s) + 1);
	(void) FUNC19(name, s);
	FUNC15(s);

	if (dsp == NULL)
		FUNC16(yypcb->pcb_jmpbuf, EDT_NOSCOPE);

	FUNC1(dsp->ds_decl->dd_kind == CTF_K_ENUM);
	value = dsp->ds_enumval + 1; /* default is previous value plus one */

	if (FUNC18(name, '`') != NULL) {
		FUNC21(D_DECL_SCOPE, "D scoping operator may not be used in "
		    "an enumerator name (%s)\n", name);
	}

	/*
	 * If the enumerator is being assigned a value, cook and check the node
	 * and then free it after we get the value.  We also permit references
	 * to identifiers which are previously defined enumerators in the type.
	 */
	if (dnp != NULL) {
		if (dnp->dn_kind != DT_NODE_IDENT || FUNC4(
		    dsp->ds_ctfp, dsp->ds_type, dnp->dn_string, &value) != 0) {
			dnp = FUNC11(dnp, DT_IDFLG_REF);

			if (dnp->dn_kind != DT_NODE_INT) {
				FUNC21(D_DECL_ENCONST, "enumerator '%s' must "
				    "be assigned to an integral constant "
				    "expression\n", name);
			}

			if ((intmax_t)dnp->dn_value > INT_MAX ||
			    (intmax_t)dnp->dn_value < INT_MIN) {
				FUNC21(D_DECL_ENOFLOW, "enumerator '%s' value "
				    "overflows INT_MAX (%d)\n", name, INT_MAX);
			}

			value = (int)dnp->dn_value;
		}
		FUNC12(dnp);
	}

	if (FUNC3(dsp->ds_ctfp, dsp->ds_type,
	    name, value) == CTF_ERR || FUNC7(dsp->ds_ctfp) == CTF_ERR) {
		FUNC21(D_UNKNOWN, "failed to define enumerator '%s': %s\n",
		    name, FUNC5(FUNC6(dsp->ds_ctfp)));
	}

	dsp->ds_enumval = value; /* save most recent value */

	/*
	 * If the enumerator name matches an identifier in the global scope,
	 * flag this as an error.  We only do this for "D" enumerators to
	 * prevent "C" header file enumerators from conflicting with the ever-
	 * growing list of D built-in global variables and inlines.  If a "C"
	 * enumerator conflicts with a global identifier, we add the enumerator
	 * but do not insert a corresponding inline (i.e. the D variable wins).
	 */
	if (FUNC10(&yypcb->pcb_globals, name) != NULL) {
		if (dsp->ds_ctfp == dtp->dt_ddefs->dm_ctfp) {
			FUNC21(D_DECL_IDRED,
			    "identifier redeclared: %s\n", name);
		} else
			return;
	}

	FUNC8("add global enumerator %s = %d\n", name, value);

	idp = FUNC9(dtp->dt_globals, name, DT_IDENT_ENUM,
	    DT_IDFLG_INLINE | DT_IDFLG_REF, 0, _dtrace_defattr, 0,
	    &dt_idops_inline, NULL, dtp->dt_gen);

	if (idp == NULL)
		FUNC16(yypcb->pcb_jmpbuf, EDT_NOMEM);

	yyintprefix = 0;
	yyintsuffix[0] = '\0';
	yyintdecimal = 0;

	dnp = FUNC13(value);
	FUNC14(dnp, dsp->ds_ctfp, dsp->ds_type, B_FALSE);

	if ((inp = FUNC17(sizeof (dt_idnode_t))) == NULL)
		FUNC16(yypcb->pcb_jmpbuf, EDT_NOMEM);

	/*
	 * Remove the INT node from the node allocation list and store it in
	 * din_list and din_root so it persists with and is freed by the ident.
	 */
	FUNC1(yypcb->pcb_list == dnp);
	yypcb->pcb_list = dnp->dn_link;
	dnp->dn_link = NULL;

	FUNC2(inp, sizeof (dt_idnode_t));
	inp->din_list = dnp;
	inp->din_root = dnp;

	idp->di_iarg = inp;
	idp->di_ctfp = dsp->ds_ctfp;
	idp->di_type = dsp->ds_type;
}