#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_7__ ;
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  void* uchar_t ;
struct TYPE_33__ {int /*<<< orphan*/  dtt_flags; int /*<<< orphan*/  dtt_type; int /*<<< orphan*/  dtt_ctfp; } ;
typedef  TYPE_1__ dtrace_typeinfo_t ;
struct TYPE_34__ {int /*<<< orphan*/  dts_name; int /*<<< orphan*/  dts_object; } ;
typedef  TYPE_2__ dtrace_syminfo_t ;
struct TYPE_35__ {scalar_t__ dt_errno; int /*<<< orphan*/  dt_gen; int /*<<< orphan*/ * dt_tls; TYPE_6__* dt_externs; TYPE_5__* dt_ddefs; int /*<<< orphan*/ * dt_globals; } ;
typedef  TYPE_3__ dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dtrace_attribute_t ;
struct TYPE_36__ {char* dn_string; int dn_flags; TYPE_6__* dn_ident; void* dn_kind; } ;
typedef  TYPE_4__ dt_node_t ;
struct TYPE_37__ {int dm_flags; } ;
typedef  TYPE_5__ dt_module_t ;
typedef  int /*<<< orphan*/  dt_idhash_t ;
struct TYPE_38__ {scalar_t__ di_kind; int di_flags; int /*<<< orphan*/  di_attr; int /*<<< orphan*/  di_type; int /*<<< orphan*/  di_ctfp; TYPE_2__* di_data; struct TYPE_38__* di_next; int /*<<< orphan*/  di_name; } ;
typedef  TYPE_6__ dt_ident_t ;
struct TYPE_39__ {int /*<<< orphan*/  pcb_jmpbuf; int /*<<< orphan*/ * pcb_locals; int /*<<< orphan*/  pcb_globals; TYPE_3__* pcb_hdl; } ;
typedef  int /*<<< orphan*/  GElf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int B_TRUE ; 
 char const* DTRACE_OBJ_EXEC ; 
 char* DTRACE_OBJ_KMODS ; 
 char* DTRACE_OBJ_UMODS ; 
 int DT_DM_KERNEL ; 
 int DT_DM_PRIMARY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ DT_IDENT_AGG ; 
 scalar_t__ DT_IDENT_ARRAY ; 
 int /*<<< orphan*/  DT_IDENT_SYMBOL ; 
 scalar_t__ DT_IDFLG_LOCAL ; 
 int DT_IDFLG_PRIM ; 
 scalar_t__ DT_IDFLG_TLS ; 
 int DT_IDFLG_USER ; 
 int DT_IDFLG_WRITE ; 
 int DT_NF_LVALUE ; 
 int DT_NF_USERLAND ; 
 int DT_NF_WRITABLE ; 
 void* DT_NODE_AGG ; 
 void* DT_NODE_SYM ; 
 void* DT_NODE_VAR ; 
 int /*<<< orphan*/  D_IDENT_BADREF ; 
 int /*<<< orphan*/  D_IDENT_UNDEF ; 
 int /*<<< orphan*/  D_ID_OFLOW ; 
 int /*<<< orphan*/  D_SYM_BADREF ; 
 int /*<<< orphan*/  D_SYM_MODEL ; 
 int /*<<< orphan*/  D_SYM_NOTYPES ; 
 scalar_t__ EDT_DATAMODEL ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  EDT_NOVAR ; 
 int /*<<< orphan*/  _dtrace_defattr ; 
 int /*<<< orphan*/  _dtrace_symattr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  dt_idops_assc ; 
 int /*<<< orphan*/  dt_idops_thaw ; 
 TYPE_6__* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 TYPE_5__* FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char const* FUNC17 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 scalar_t__ FUNC19 (TYPE_3__*,char const*,char*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC20 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC23 (int) ; 
 char* FUNC24 (char*,char) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,char const* const,char const*,...) ; 
 TYPE_7__* yypcb ; 

__attribute__((used)) static void
FUNC26(dt_node_t *dnp, dt_idhash_t *dhp, uint_t idkind, int create)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	const char *sname = FUNC8(dhp);
	int uref = 0;

	dtrace_attribute_t attr = _dtrace_defattr;
	dt_ident_t *idp;
	dtrace_syminfo_t dts;
	GElf_Sym sym;

	const char *scope, *mark;
	uchar_t dnkind;
	char *name;

	/*
	 * Look for scoping marks in the identifier.  If one is found, set our
	 * scope to either DTRACE_OBJ_KMODS or UMODS or to the first part of
	 * the string that specifies the scope using an explicit module name.
	 * If two marks in a row are found, set 'uref' (user symbol reference).
	 * Otherwise we set scope to DTRACE_OBJ_EXEC, indicating that normal
	 * scope is desired and we should search the specified idhash.
	 */
	if ((name = FUNC24(dnp->dn_string, '`')) != NULL) {
		if (name > dnp->dn_string && name[-1] == '`') {
			uref++;
			name[-1] = '\0';
		}

		if (name == dnp->dn_string + uref)
			scope = uref ? DTRACE_OBJ_UMODS : DTRACE_OBJ_KMODS;
		else
			scope = dnp->dn_string;

		*name++ = '\0'; /* leave name pointing after scoping mark */
		dnkind = DT_NODE_VAR;

	} else if (idkind == DT_IDENT_AGG) {
		scope = DTRACE_OBJ_EXEC;
		name = dnp->dn_string + 1;
		dnkind = DT_NODE_AGG;
	} else {
		scope = DTRACE_OBJ_EXEC;
		name = dnp->dn_string;
		dnkind = DT_NODE_VAR;
	}

	/*
	 * If create is set to false, and we fail our idhash lookup, preset
	 * the errno code to EDT_NOVAR for our final error message below.
	 * If we end up calling dtrace_lookup_by_name(), it will reset the
	 * errno appropriately and that error will be reported instead.
	 */
	(void) FUNC16(dtp, EDT_NOVAR);
	mark = uref ? "``" : "`";

	if (scope == DTRACE_OBJ_EXEC && (
	    (dhp != dtp->dt_globals &&
	    (idp = FUNC7(dhp, name)) != NULL) ||
	    (dhp == dtp->dt_globals &&
	    (idp = FUNC11(&yypcb->pcb_globals, name)) != NULL))) {
		/*
		 * Check that we are referencing the ident in the manner that
		 * matches its type if this is a global lookup.  In the TLS or
		 * local case, we don't know how the ident will be used until
		 * the time operator -> is seen; more parsing is needed.
		 */
		if (idp->di_kind != idkind && dhp == dtp->dt_globals) {
			FUNC25(D_IDENT_BADREF, "%s '%s' may not be referenced "
			    "as %s\n", FUNC10(idp->di_kind),
			    idp->di_name, FUNC10(idkind));
		}

		/*
		 * Arrays and aggregations are not cooked individually. They
		 * have dynamic types and must be referenced using operator [].
		 * This is handled explicitly by the code for DT_TOK_LBRAC.
		 */
		if (idp->di_kind != DT_IDENT_ARRAY &&
		    idp->di_kind != DT_IDENT_AGG)
			attr = FUNC4(dnp, idp, NULL);
		else {
			FUNC15(dnp,
			    FUNC0(dtp), FUNC1(dtp), B_FALSE);
			attr = idp->di_attr;
		}

		FUNC21(dnp->dn_string);
		dnp->dn_string = NULL;
		dnp->dn_kind = dnkind;
		dnp->dn_ident = idp;
		dnp->dn_flags |= DT_NF_LVALUE;

		if (idp->di_flags & DT_IDFLG_WRITE)
			dnp->dn_flags |= DT_NF_WRITABLE;

		FUNC14(dnp, attr);

	} else if (dhp == dtp->dt_globals && scope != DTRACE_OBJ_EXEC &&
	    FUNC19(dtp, scope, name, &sym, &dts) == 0) {

		dt_module_t *mp = FUNC12(dtp, dts.dts_object);
		int umod = (mp->dm_flags & DT_DM_KERNEL) == 0;
		static const char *const kunames[] = { "kernel", "user" };

		dtrace_typeinfo_t dtt;
		dtrace_syminfo_t *sip;

		if (uref ^ umod) {
			FUNC25(D_SYM_BADREF, "%s module '%s' symbol '%s' may "
			    "not be referenced as a %s symbol\n", kunames[umod],
			    dts.dts_object, dts.dts_name, kunames[uref]);
		}

		if (FUNC20(dtp, &sym, &dts, &dtt) != 0) {
			/*
			 * For now, we special-case EDT_DATAMODEL to clarify
			 * that mixed data models are not currently supported.
			 */
			if (dtp->dt_errno == EDT_DATAMODEL) {
				FUNC25(D_SYM_MODEL, "cannot use %s symbol "
				    "%s%s%s in a %s D program\n",
				    FUNC13(mp),
				    dts.dts_object, mark, dts.dts_name,
				    FUNC13(dtp->dt_ddefs));
			}

			FUNC25(D_SYM_NOTYPES,
			    "no symbolic type information is available for "
			    "%s%s%s: %s\n", dts.dts_object, mark, dts.dts_name,
			    FUNC17(dtp, FUNC18(dtp)));
		}

		idp = FUNC5(name, DT_IDENT_SYMBOL, 0, 0,
		    _dtrace_symattr, 0, &dt_idops_thaw, NULL, dtp->dt_gen);

		if (idp == NULL)
			FUNC22(yypcb->pcb_jmpbuf, EDT_NOMEM);

		if (mp->dm_flags & DT_DM_PRIMARY)
			idp->di_flags |= DT_IDFLG_PRIM;

		idp->di_next = dtp->dt_externs;
		dtp->dt_externs = idp;

		if ((sip = FUNC23(sizeof (dtrace_syminfo_t))) == NULL)
			FUNC22(yypcb->pcb_jmpbuf, EDT_NOMEM);

		FUNC2(&dts, sip, sizeof (dtrace_syminfo_t));
		idp->di_data = sip;
		idp->di_ctfp = dtt.dtt_ctfp;
		idp->di_type = dtt.dtt_type;

		FUNC21(dnp->dn_string);
		dnp->dn_string = NULL;
		dnp->dn_kind = DT_NODE_SYM;
		dnp->dn_ident = idp;
		dnp->dn_flags |= DT_NF_LVALUE;

		FUNC15(dnp, dtt.dtt_ctfp, dtt.dtt_type,
		    dtt.dtt_flags);
		FUNC14(dnp, _dtrace_symattr);

		if (uref) {
			idp->di_flags |= DT_IDFLG_USER;
			dnp->dn_flags |= DT_NF_USERLAND;
		}

	} else if (scope == DTRACE_OBJ_EXEC && create == B_TRUE) {
		uint_t flags = DT_IDFLG_WRITE;
		uint_t id;

		if (FUNC9(dhp, &id) == -1) {
			FUNC25(D_ID_OFLOW, "cannot create %s: limit on number "
			    "of %s variables exceeded\n", name, sname);
		}

		if (dhp == yypcb->pcb_locals)
			flags |= DT_IDFLG_LOCAL;
		else if (dhp == dtp->dt_tls)
			flags |= DT_IDFLG_TLS;

		FUNC3("create %s %s variable %s, id=%u\n",
		    sname, FUNC10(idkind), name, id);

		if (idkind == DT_IDENT_ARRAY || idkind == DT_IDENT_AGG) {
			idp = FUNC6(dhp, name,
			    idkind, flags, id, _dtrace_defattr, 0,
			    &dt_idops_assc, NULL, dtp->dt_gen);
		} else {
			idp = FUNC6(dhp, name,
			    idkind, flags, id, _dtrace_defattr, 0,
			    &dt_idops_thaw, NULL, dtp->dt_gen);
		}

		if (idp == NULL)
			FUNC22(yypcb->pcb_jmpbuf, EDT_NOMEM);

		/*
		 * Arrays and aggregations are not cooked individually. They
		 * have dynamic types and must be referenced using operator [].
		 * This is handled explicitly by the code for DT_TOK_LBRAC.
		 */
		if (idp->di_kind != DT_IDENT_ARRAY &&
		    idp->di_kind != DT_IDENT_AGG)
			attr = FUNC4(dnp, idp, NULL);
		else {
			FUNC15(dnp,
			    FUNC0(dtp), FUNC1(dtp), B_FALSE);
			attr = idp->di_attr;
		}

		FUNC21(dnp->dn_string);
		dnp->dn_string = NULL;
		dnp->dn_kind = dnkind;
		dnp->dn_ident = idp;
		dnp->dn_flags |= DT_NF_LVALUE | DT_NF_WRITABLE;

		FUNC14(dnp, attr);

	} else if (scope != DTRACE_OBJ_EXEC) {
		FUNC25(D_IDENT_UNDEF, "failed to resolve %s%s%s: %s\n",
		    dnp->dn_string, mark, name,
		    FUNC17(dtp, FUNC18(dtp)));
	} else {
		FUNC25(D_IDENT_UNDEF, "failed to resolve %s: %s\n",
		    dnp->dn_string, FUNC17(dtp, FUNC18(dtp)));
	}
}