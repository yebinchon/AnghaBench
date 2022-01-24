#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* ds_decl; } ;
typedef  TYPE_1__ dt_scope_t ;
struct TYPE_6__ {struct TYPE_6__* dd_next; } ;
typedef  TYPE_2__ dt_decl_t ;
struct TYPE_7__ {TYPE_1__ pcb_dstack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_3__* yypcb ; 

void
FUNC1(void)
{
	dt_scope_t *dsp = &yypcb->pcb_dstack;
	dt_decl_t *ddp = dsp->ds_decl;

	while (ddp->dd_next != NULL) {
		dsp->ds_decl = ddp->dd_next;
		ddp->dd_next = NULL;
		FUNC0(ddp);
		ddp = dsp->ds_decl;
	}
}