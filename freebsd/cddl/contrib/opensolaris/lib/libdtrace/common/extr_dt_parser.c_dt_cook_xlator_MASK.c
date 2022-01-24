#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  n2 ;
typedef  int /*<<< orphan*/  n1 ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  void* dtrace_attribute_t ;
struct TYPE_17__ {void* di_attr; } ;
struct TYPE_16__ {void* di_attr; } ;
struct TYPE_18__ {TYPE_2__ dx_ptrid; TYPE_1__ dx_souid; int /*<<< orphan*/  dx_locals; int /*<<< orphan*/  dx_dst_ctfp; int /*<<< orphan*/  dx_dst_type; } ;
typedef  TYPE_3__ dt_xlator_t ;
struct TYPE_19__ {struct TYPE_19__* dn_membexpr; int /*<<< orphan*/  dn_membname; int /*<<< orphan*/  dn_attr; struct TYPE_19__* dn_list; struct TYPE_19__* dn_members; TYPE_3__* dn_xlator; } ;
typedef  TYPE_4__ dt_node_t ;
struct TYPE_20__ {int /*<<< orphan*/  ctm_type; } ;
typedef  TYPE_5__ ctf_membinfo_t ;
struct TYPE_21__ {int /*<<< orphan*/  pcb_globals; int /*<<< orphan*/ * pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ CTF_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DT_IDFLG_REF ; 
 int DT_TYPE_NAMELEN ; 
 int /*<<< orphan*/  D_XLATE_INCOMPAT ; 
 int /*<<< orphan*/  D_XLATE_MEMB ; 
 int /*<<< orphan*/  _dtrace_defattr ; 
 void* _dtrace_maxattr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 TYPE_6__* yypcb ; 

__attribute__((used)) static dt_node_t *
FUNC13(dt_node_t *dnp, uint_t idflags)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	dt_xlator_t *dxp = dnp->dn_xlator;
	dt_node_t *mnp;

	char n1[DT_TYPE_NAMELEN];
	char n2[DT_TYPE_NAMELEN];

	dtrace_attribute_t attr = _dtrace_maxattr;
	ctf_membinfo_t ctm;

	/*
	 * Before cooking each translator member, we push a reference to the
	 * hash containing translator-local identifiers on to pcb_globals to
	 * temporarily interpose these identifiers in front of other globals.
	 */
	FUNC6(&yypcb->pcb_globals, dxp->dx_locals);

	for (mnp = dnp->dn_members; mnp != NULL; mnp = mnp->dn_list) {
		if (FUNC2(dxp->dx_dst_ctfp, dxp->dx_dst_type,
		    mnp->dn_membname, &ctm) == CTF_ERR) {
			FUNC12(D_XLATE_MEMB,
			    "translator member %s is not a member of %s\n",
			    mnp->dn_membname, FUNC3(dxp->dx_dst_ctfp,
			    dxp->dx_dst_type, n1, sizeof (n1)));
		}

		(void) FUNC8(mnp, DT_IDFLG_REF);
		FUNC10(mnp, dxp->dx_dst_ctfp, ctm.ctm_type,
		    B_FALSE);
		attr = FUNC4(attr, mnp->dn_attr);

		if (FUNC9(mnp, mnp->dn_membexpr) == 0) {
			FUNC12(D_XLATE_INCOMPAT,
			    "translator member %s definition uses "
			    "incompatible types: \"%s\" = \"%s\"\n",
			    mnp->dn_membname,
			    FUNC11(mnp, n1, sizeof (n1)),
			    FUNC11(mnp->dn_membexpr,
			    n2, sizeof (n2)));
		}
	}

	FUNC5(&yypcb->pcb_globals, dxp->dx_locals);

	dxp->dx_souid.di_attr = attr;
	dxp->dx_ptrid.di_attr = attr;

	FUNC10(dnp, FUNC0(dtp), FUNC1(dtp), B_FALSE);
	FUNC7(dnp, _dtrace_defattr);

	return (dnp);
}