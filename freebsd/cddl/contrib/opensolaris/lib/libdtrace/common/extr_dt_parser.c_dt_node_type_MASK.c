#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ dtt_ctfp; int /*<<< orphan*/  dtt_flags; int /*<<< orphan*/  dtt_type; } ;
typedef  TYPE_3__ dtrace_typeinfo_t ;
struct TYPE_15__ {TYPE_2__* dt_ddefs; TYPE_1__* dt_cdefs; } ;
typedef  TYPE_4__ dtrace_hdl_t ;
struct TYPE_16__ {char* dn_string; int /*<<< orphan*/  dn_op; } ;
typedef  TYPE_5__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_decl_t ;
struct TYPE_17__ {int /*<<< orphan*/  pcb_jmpbuf; TYPE_4__* pcb_hdl; } ;
struct TYPE_13__ {scalar_t__ dm_ctfp; } ;
struct TYPE_12__ {scalar_t__ dm_ctfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_NODE_TYPE ; 
 int /*<<< orphan*/  DT_TOK_IDENT ; 
 int /*<<< orphan*/  EDT_COMPILER ; 
 int /*<<< orphan*/  _dtrace_defattr ; 
 int /*<<< orphan*/  _dtrace_typattr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char**) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* yypcb ; 

dt_node_t *
FUNC8(dt_decl_t *ddp)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	dtrace_typeinfo_t dtt;
	dt_node_t *dnp;
	char *name = NULL;
	int err;

	/*
	 * If 'ddp' is NULL, we get a decl by popping the decl stack.  This
	 * form of dt_node_type() is used by parameter rules in dt_grammar.y.
	 */
	if (ddp == NULL)
		ddp = FUNC1(&name);

	err = FUNC2(ddp, &dtt);
	FUNC0(ddp);

	if (err != 0) {
		FUNC6(name);
		FUNC7(yypcb->pcb_jmpbuf, EDT_COMPILER);
	}

	dnp = FUNC3(DT_NODE_TYPE);
	dnp->dn_op = DT_TOK_IDENT;
	dnp->dn_string = name;

	FUNC5(dnp, dtt.dtt_ctfp, dtt.dtt_type, dtt.dtt_flags);

	if (dtt.dtt_ctfp == dtp->dt_cdefs->dm_ctfp ||
	    dtt.dtt_ctfp == dtp->dt_ddefs->dm_ctfp)
		FUNC4(dnp, _dtrace_defattr);
	else
		FUNC4(dnp, _dtrace_typattr);

	return (dnp);
}