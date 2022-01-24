#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  sn ;
typedef  int /*<<< orphan*/  n2 ;
typedef  int /*<<< orphan*/  n1 ;
struct TYPE_18__ {int /*<<< orphan*/  dtt_type; int /*<<< orphan*/  dtt_ctfp; } ;
typedef  TYPE_1__ dtrace_typeinfo_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_xlator_t ;
struct TYPE_19__ {struct TYPE_19__* dn_members; int /*<<< orphan*/ * dn_xlator; } ;
typedef  TYPE_2__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_decl_t ;
typedef  int /*<<< orphan*/  dn ;
struct TYPE_20__ {int /*<<< orphan*/  pcb_jmpbuf; int /*<<< orphan*/  pcb_list; int /*<<< orphan*/ * pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ CTF_K_FORWARD ; 
 scalar_t__ CTF_K_STRUCT ; 
 scalar_t__ CTF_K_UNION ; 
 int /*<<< orphan*/  DT_IDFLG_REF ; 
 int /*<<< orphan*/  DT_NODE_XLATOR ; 
 int DT_TYPE_NAMELEN ; 
 int /*<<< orphan*/  DT_XLATE_EXACT ; 
 int /*<<< orphan*/  D_XLATE_REDECL ; 
 int /*<<< orphan*/  D_XLATE_SOU ; 
 int /*<<< orphan*/  EDT_COMPILER ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  YYS_CLAUSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_3__* yypcb ; 

dt_node_t *
FUNC16(dt_decl_t *ddp, dt_decl_t *sdp, char *name, dt_node_t *members)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	dtrace_typeinfo_t src, dst;
	dt_node_t sn, dn;
	dt_xlator_t *dxp;
	dt_node_t *dnp;
	int edst, esrc;
	uint_t kind;

	char n1[DT_TYPE_NAMELEN];
	char n2[DT_TYPE_NAMELEN];

	edst = FUNC4(ddp, &dst);
	FUNC3(ddp);

	esrc = FUNC4(sdp, &src);
	FUNC3(sdp);

	if (edst != 0 || esrc != 0) {
		FUNC12(name);
		FUNC13(yypcb->pcb_jmpbuf, EDT_COMPILER);
	}

	FUNC0(&sn, sizeof (sn));
	FUNC7(&sn, src.dtt_ctfp, src.dtt_type, B_FALSE);

	FUNC0(&dn, sizeof (dn));
	FUNC7(&dn, dst.dtt_ctfp, dst.dtt_type, B_FALSE);

	if (FUNC11(dtp, &sn, &dn, DT_XLATE_EXACT) != NULL) {
		FUNC14(D_XLATE_REDECL,
		    "translator from %s to %s has already been declared\n",
		    FUNC8(&sn, n1, sizeof (n1)),
		    FUNC8(&dn, n2, sizeof (n2)));
	}

	kind = FUNC1(dst.dtt_ctfp,
	    FUNC2(dst.dtt_ctfp, dst.dtt_type));

	if (kind == CTF_K_FORWARD) {
		FUNC14(D_XLATE_SOU, "incomplete struct/union/enum %s\n",
		    FUNC9(dst.dtt_ctfp, dst.dtt_type, n1, sizeof (n1)));
	}

	if (kind != CTF_K_STRUCT && kind != CTF_K_UNION) {
		FUNC14(D_XLATE_SOU,
		    "translator output type must be a struct or union\n");
	}

	dxp = FUNC10(dtp, &src, &dst, name, members, yypcb->pcb_list);
	FUNC15(YYS_CLAUSE);
	FUNC12(name);

	if (dxp == NULL)
		FUNC13(yypcb->pcb_jmpbuf, EDT_NOMEM);

	dnp = FUNC5(DT_NODE_XLATOR);
	dnp->dn_xlator = dxp;
	dnp->dn_members = members;

	return (FUNC6(dnp, DT_IDFLG_REF));
}