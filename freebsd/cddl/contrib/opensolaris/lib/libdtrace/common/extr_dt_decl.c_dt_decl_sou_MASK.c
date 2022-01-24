#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  n ;
struct TYPE_13__ {scalar_t__ dd_type; int /*<<< orphan*/ * dd_ctfp; } ;
typedef  TYPE_5__ dt_decl_t ;
typedef  scalar_t__ ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_12__ {int /*<<< orphan*/ * ds_next; } ;
struct TYPE_14__ {scalar_t__ pcb_idepth; TYPE_4__ pcb_dstack; TYPE_3__* pcb_hdl; } ;
struct TYPE_11__ {TYPE_2__* dt_ddefs; TYPE_1__* dt_cdefs; } ;
struct TYPE_10__ {int /*<<< orphan*/ * dm_ctfp; } ;
struct TYPE_9__ {int /*<<< orphan*/ * dm_ctfp; } ;

/* Variables and functions */
 scalar_t__ CTF_ADD_NONROOT ; 
 scalar_t__ CTF_ADD_ROOT ; 
 scalar_t__ CTF_ERR ; 
 scalar_t__ CTF_K_FORWARD ; 
 scalar_t__ CTF_K_STRUCT ; 
 int DT_TYPE_NAMELEN ; 
 int /*<<< orphan*/  D_DECL_TYPERED ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,...) ; 
 TYPE_6__* yypcb ; 

dt_decl_t *
FUNC11(uint_t kind, char *name)
{
	dt_decl_t *ddp = FUNC7(kind, name);
	char n[DT_TYPE_NAMELEN];
	ctf_file_t *ctfp;
	ctf_id_t type;
	uint_t flag;

	if (yypcb->pcb_idepth != 0)
		ctfp = yypcb->pcb_hdl->dt_cdefs->dm_ctfp;
	else
		ctfp = yypcb->pcb_hdl->dt_ddefs->dm_ctfp;

	if (yypcb->pcb_dstack.ds_next != NULL)
		flag = CTF_ADD_NONROOT;
	else
		flag = CTF_ADD_ROOT;

	(void) FUNC9(n, sizeof (n), "%s %s",
	    kind == CTF_K_STRUCT ? "struct" : "union",
	    name == NULL ? "(anon)" : name);

	if (name != NULL && (type = FUNC4(ctfp, n)) != CTF_ERR &&
	    FUNC5(ctfp, type) != CTF_K_FORWARD)
		FUNC10(D_DECL_TYPERED, "type redeclared: %s\n", n);

	if (kind == CTF_K_STRUCT)
		type = FUNC0(ctfp, flag, name);
	else
		type = FUNC1(ctfp, flag, name);

	if (type == CTF_ERR || FUNC6(ctfp) == CTF_ERR) {
		FUNC10(D_UNKNOWN, "failed to define %s: %s\n",
		    n, FUNC2(FUNC3(ctfp)));
	}

	ddp->dd_ctfp = ctfp;
	ddp->dd_type = type;

	FUNC8(ctfp, type);
	return (ddp);
}