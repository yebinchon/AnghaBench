#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  dtvd_name; } ;
struct TYPE_16__ {int pv_flags; int /*<<< orphan*/  pv_probes; TYPE_1__ pv_desc; } ;
typedef  TYPE_3__ dt_provider_t ;
struct TYPE_17__ {scalar_t__ pr_xargs; scalar_t__ pr_nargs; TYPE_12__* pr_ident; int /*<<< orphan*/  pr_nargc; int /*<<< orphan*/  pr_xargc; } ;
typedef  TYPE_4__ dt_probe_t ;
typedef  int /*<<< orphan*/  dt_node_t ;
struct TYPE_18__ {TYPE_2__* pcb_hdl; } ;
struct TYPE_15__ {scalar_t__ dt_gen; } ;
struct TYPE_13__ {scalar_t__ di_gen; int /*<<< orphan*/  di_flags; int /*<<< orphan*/  di_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_IDFLG_ORPHAN ; 
 int DT_PROVIDER_IMPL ; 
 int /*<<< orphan*/  D_PROV_INCOMPAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_5__* yypcb ; 

__attribute__((used)) static void
FUNC4(dt_provider_t *pvp, dt_node_t *pnp,
    dt_probe_t *old, dt_probe_t *new)
{
	FUNC2(pvp, pnp, "output",
	    old->pr_xargc, old->pr_xargs, new->pr_xargc, new->pr_xargs);

	if (old->pr_nargs != old->pr_xargs && new->pr_nargs != new->pr_xargs) {
		FUNC2(pvp, pnp, "input",
		    old->pr_nargc, old->pr_nargs, new->pr_nargc, new->pr_nargs);
	}

	if (old->pr_nargs == old->pr_xargs && new->pr_nargs != new->pr_xargs) {
		if (pvp->pv_flags & DT_PROVIDER_IMPL) {
			FUNC0(pnp, D_PROV_INCOMPAT,
			    "provider interface mismatch: %s\n"
			    "\t current: probe %s:%s has an output prototype\n"
			    "\tprevious: probe %s:%s has no output prototype\n",
			    pvp->pv_desc.dtvd_name, pvp->pv_desc.dtvd_name,
			    new->pr_ident->di_name, pvp->pv_desc.dtvd_name,
			    old->pr_ident->di_name);
		}

		if (old->pr_ident->di_gen == yypcb->pcb_hdl->dt_gen)
			old->pr_ident->di_flags |= DT_IDFLG_ORPHAN;

		FUNC1(pvp->pv_probes, old->pr_ident);
		FUNC3(pvp, new);
	}
}