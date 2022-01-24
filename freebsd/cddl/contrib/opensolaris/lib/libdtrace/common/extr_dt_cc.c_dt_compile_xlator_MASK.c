#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ ** dx_membdif; } ;
typedef  TYPE_1__ dt_xlator_t ;
struct TYPE_6__ {size_t dn_membid; struct TYPE_6__* dn_list; struct TYPE_6__* dn_members; TYPE_1__* dn_xlator; } ;
typedef  TYPE_2__ dt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  yypcb ; 

__attribute__((used)) static void
FUNC3(dt_node_t *dnp)
{
	dt_xlator_t *dxp = dnp->dn_xlator;
	dt_node_t *mnp;

	for (mnp = dnp->dn_members; mnp != NULL; mnp = mnp->dn_list) {
		FUNC0(dxp->dx_membdif[mnp->dn_membid] == NULL);
		FUNC2(yypcb, mnp);
		dxp->dx_membdif[mnp->dn_membid] = FUNC1(yypcb);
	}
}