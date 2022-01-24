#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dt_node_t ;
struct TYPE_7__ {scalar_t__ dd_kind; int dd_attr; struct TYPE_7__* dd_next; int /*<<< orphan*/ * dd_node; } ;
typedef  TYPE_1__ dt_decl_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_K_FUNCTION ; 
 scalar_t__ CTF_K_POINTER ; 
 int DT_DA_PAREN ; 
 int DT_DP_ANON ; 
 int DT_DP_VARARGS ; 
 int DT_DP_VOID ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

dt_decl_t *
FUNC3(dt_decl_t *pdp, dt_node_t *dnp)
{
	dt_decl_t *ddp = FUNC0(CTF_K_FUNCTION, NULL);

	ddp->dd_node = dnp;

	(void) FUNC1(dnp, dnp, "function",
	    DT_DP_VARARGS | DT_DP_VOID | DT_DP_ANON);

	if (pdp == NULL || pdp->dd_kind != CTF_K_POINTER)
		return (FUNC2(ddp));

	while (pdp->dd_next != NULL && !(pdp->dd_next->dd_attr & DT_DA_PAREN))
		pdp = pdp->dd_next;

	if (pdp->dd_next == NULL)
		return (FUNC2(ddp));

	ddp->dd_next = pdp->dd_next;
	pdp->dd_next = ddp;

	return (pdp);
}