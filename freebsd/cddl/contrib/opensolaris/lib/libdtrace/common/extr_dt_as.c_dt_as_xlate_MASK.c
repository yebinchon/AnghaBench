#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong_t ;
typedef  size_t uint_t ;
struct TYPE_12__ {int dt_xlatorid; } ;
typedef  TYPE_2__ dtrace_hdl_t ;
struct TYPE_13__ {size_t dtdo_len; size_t dtdo_xlmlen; TYPE_6__** dtdo_xlmtab; int /*<<< orphan*/ * dtdo_buf; } ;
typedef  TYPE_3__ dtrace_difo_t ;
struct TYPE_14__ {int dx_id; scalar_t__ dx_nmembers; } ;
typedef  TYPE_4__ dt_xlator_t ;
struct TYPE_15__ {int pcb_asxreflen; int /*<<< orphan*/ ** pcb_asxrefs; int /*<<< orphan*/  pcb_jmpbuf; TYPE_2__* pcb_hdl; } ;
typedef  TYPE_5__ dt_pcb_t ;
struct TYPE_16__ {scalar_t__ dn_kind; scalar_t__ dn_membid; TYPE_1__* dn_membexpr; } ;
typedef  TYPE_6__ dt_node_t ;
struct TYPE_11__ {scalar_t__ dn_kind; TYPE_4__* dn_xlator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ DT_NODE_MEMBER ; 
 scalar_t__ DT_NODE_XLATOR ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(dt_pcb_t *pcb, dtrace_difo_t *dp,
    uint_t i, uint_t xi, dt_node_t *dnp)
{
	dtrace_hdl_t *dtp = pcb->pcb_hdl;
	dt_xlator_t *dxp = dnp->dn_membexpr->dn_xlator;

	FUNC5(i < dp->dtdo_len);
	FUNC5(xi < dp->dtdo_xlmlen);

	FUNC5(dnp->dn_kind == DT_NODE_MEMBER);
	FUNC5(dnp->dn_membexpr->dn_kind == DT_NODE_XLATOR);

	FUNC5(dxp->dx_id < dtp->dt_xlatorid);
	FUNC5(dnp->dn_membid < dxp->dx_nmembers);

	if (pcb->pcb_asxrefs == NULL) {
		pcb->pcb_asxreflen = dtp->dt_xlatorid;
		pcb->pcb_asxrefs =
		    FUNC6(dtp, sizeof (ulong_t *) * pcb->pcb_asxreflen);
		if (pcb->pcb_asxrefs == NULL)
			FUNC7(pcb->pcb_jmpbuf, EDT_NOMEM);
	}

	if (pcb->pcb_asxrefs[dxp->dx_id] == NULL) {
		pcb->pcb_asxrefs[dxp->dx_id] =
		    FUNC6(dtp, FUNC1(dxp->dx_nmembers));
		if (pcb->pcb_asxrefs[dxp->dx_id] == NULL)
			FUNC7(pcb->pcb_jmpbuf, EDT_NOMEM);
	}

	dp->dtdo_buf[i] = FUNC4(
	    FUNC2(dp->dtdo_buf[i]), xi, FUNC3(dp->dtdo_buf[i]));

	FUNC0(pcb->pcb_asxrefs[dxp->dx_id], dnp->dn_membid);
	dp->dtdo_xlmtab[xi] = dnp;
}