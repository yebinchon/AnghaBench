#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_9__ {TYPE_6__* dn_ident; int /*<<< orphan*/  dn_aggtup; int /*<<< orphan*/ * dn_aggfun; } ;
typedef  TYPE_1__ dt_node_t ;
struct TYPE_11__ {int /*<<< orphan*/  di_attr; } ;
struct TYPE_10__ {int /*<<< orphan*/ * pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DT_IDFLG_REF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* yypcb ; 

__attribute__((used)) static dt_node_t *
FUNC6(dt_node_t *dnp, uint_t idflags)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;

	if (dnp->dn_aggfun != NULL) {
		dnp->dn_aggfun = FUNC4(dnp->dn_aggfun, DT_IDFLG_REF);
		FUNC3(dnp, FUNC2(dnp,
		    dnp->dn_ident, &dnp->dn_aggtup));
	} else {
		FUNC5(dnp, FUNC0(dtp), FUNC1(dtp),
		    B_FALSE);
		FUNC3(dnp, dnp->dn_ident->di_attr);
	}

	return (dnp);
}