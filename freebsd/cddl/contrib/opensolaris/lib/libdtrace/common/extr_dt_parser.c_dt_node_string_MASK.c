#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_6__ {char* dn_string; int /*<<< orphan*/  dn_op; } ;
typedef  TYPE_1__ dt_node_t ;
struct TYPE_7__ {int /*<<< orphan*/  pcb_jmpbuf; int /*<<< orphan*/ * pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DT_NODE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DT_TOK_STRING ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* yypcb ; 

dt_node_t *
FUNC5(char *string)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	dt_node_t *dnp;

	if (string == NULL)
		FUNC4(yypcb->pcb_jmpbuf, EDT_NOMEM);

	dnp = FUNC2(DT_NODE_STRING);
	dnp->dn_op = DT_TOK_STRING;
	dnp->dn_string = string;
	FUNC3(dnp, FUNC0(dtp), FUNC1(dtp), B_FALSE);

	return (dnp);
}