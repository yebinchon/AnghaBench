#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ dtt_type; int /*<<< orphan*/  dtt_ctfp; } ;
typedef  TYPE_1__ dtrace_typeinfo_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_node_t ;
struct TYPE_7__ {scalar_t__ di_type; int /*<<< orphan*/  di_ctfp; int /*<<< orphan*/  di_name; scalar_t__ di_iarg; } ;
typedef  TYPE_2__ dt_ident_t ;
struct TYPE_8__ {int /*<<< orphan*/ * pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ CTF_ERR ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* yypcb ; 

__attribute__((used)) static void
FUNC5(dt_node_t *dnp, dt_ident_t *idp, int argc, dt_node_t *args)
{
	if (idp->di_type == CTF_ERR) {
		dtrace_hdl_t *dtp = yypcb->pcb_hdl;
		dtrace_typeinfo_t dtt;

		if (FUNC1(idp->di_iarg, &dtt) == -1) {
			FUNC4(D_UNKNOWN,
			    "failed to resolve type %s for identifier %s: %s\n",
			    (const char *)idp->di_iarg, idp->di_name,
			    FUNC2(dtp, FUNC3(dtp)));
		}

		idp->di_ctfp = dtt.dtt_ctfp;
		idp->di_type = dtt.dtt_type;
	}

	FUNC0(dnp, idp->di_ctfp, idp->di_type, B_FALSE);
}