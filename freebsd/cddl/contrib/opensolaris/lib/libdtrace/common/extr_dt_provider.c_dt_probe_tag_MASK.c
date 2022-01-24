#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
struct TYPE_15__ {scalar_t__ dtt_type; int /*<<< orphan*/  dtt_ctfp; int /*<<< orphan*/  dtt_object; } ;
typedef  TYPE_3__ dtrace_typeinfo_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_16__ {char* pr_name; TYPE_2__* pr_pvp; } ;
typedef  TYPE_4__ dt_probe_t ;
struct TYPE_17__ {int /*<<< orphan*/  dn_kind; } ;
typedef  TYPE_5__ dt_node_t ;
struct TYPE_13__ {char* dtvd_name; } ;
struct TYPE_14__ {TYPE_1__ pv_desc; int /*<<< orphan*/ * pv_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  CTF_ADD_ROOT ; 
 scalar_t__ CTF_ERR ; 
 int /*<<< orphan*/  DTRACE_OBJ_DDEFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DT_NODE_TYPE ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 int /*<<< orphan*/  _dtrace_defattr ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 size_t FUNC11 (char*,size_t,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

dt_node_t *
FUNC13(dt_probe_t *prp, uint_t argn, dt_node_t *dnp)
{
	dtrace_hdl_t *dtp = prp->pr_pvp->pv_hdl;
	dtrace_typeinfo_t dtt;
	size_t len;
	char *tag;

	len = FUNC11(NULL, 0, "__dtrace_%s___%s_arg%u",
	    prp->pr_pvp->pv_desc.dtvd_name, prp->pr_name, argn);

	tag = FUNC2(len + 1);

	(void) FUNC11(tag, len + 1, "__dtrace_%s___%s_arg%u",
	    prp->pr_pvp->pv_desc.dtvd_name, prp->pr_name, argn);

	if (FUNC10(dtp, DTRACE_OBJ_DDEFS, tag, &dtt) != 0) {
		dtt.dtt_object = DTRACE_OBJ_DDEFS;
		dtt.dtt_ctfp = FUNC0(dtp);
		dtt.dtt_type = FUNC4(FUNC0(dtp),
		    CTF_ADD_ROOT, tag, FUNC1(dtp));

		if (dtt.dtt_type == CTF_ERR ||
		    FUNC7(dtt.dtt_ctfp) == CTF_ERR) {
			FUNC12(D_UNKNOWN, "cannot define type %s: %s\n",
			    tag, FUNC5(FUNC6(dtt.dtt_ctfp)));
		}
	}

	FUNC3(dnp, sizeof (dt_node_t));
	dnp->dn_kind = DT_NODE_TYPE;

	FUNC9(dnp, dtt.dtt_ctfp, dtt.dtt_type, B_FALSE);
	FUNC8(dnp, _dtrace_defattr);

	return (dnp);
}