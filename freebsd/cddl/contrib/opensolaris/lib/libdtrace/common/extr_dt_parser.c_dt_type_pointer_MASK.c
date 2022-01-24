#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
struct TYPE_7__ {scalar_t__ dtt_type; int /*<<< orphan*/  dtt_flags; int /*<<< orphan*/ * dtt_ctfp; int /*<<< orphan*/  dtt_object; } ;
typedef  TYPE_1__ dtrace_typeinfo_t ;
struct TYPE_8__ {void* dt_ctferr; TYPE_3__* dt_ddefs; TYPE_3__* dt_cdefs; } ;
typedef  TYPE_2__ dtrace_hdl_t ;
struct TYPE_9__ {int /*<<< orphan*/ * dm_ctfp; int /*<<< orphan*/  dm_name; } ;
typedef  TYPE_3__ dt_module_t ;
typedef  scalar_t__ ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_10__ {scalar_t__ pcb_idepth; TYPE_2__* pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ADD_ROOT ; 
 scalar_t__ CTF_ERR ; 
 int /*<<< orphan*/  EDT_CTF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* yypcb ; 

int
FUNC8(dtrace_typeinfo_t *tip)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	ctf_file_t *ctfp = tip->dtt_ctfp;
	ctf_id_t type = tip->dtt_type;
	ctf_id_t base = FUNC5(ctfp, type);
	uint_t bflags = tip->dtt_flags;

	dt_module_t *dmp;
	ctf_id_t ptr;

	if ((ptr = FUNC4(ctfp, type)) != CTF_ERR ||
	    (ptr = FUNC4(ctfp, base)) != CTF_ERR) {
		tip->dtt_type = ptr;
		return (0);
	}

	if (yypcb->pcb_idepth != 0)
		dmp = dtp->dt_cdefs;
	else
		dmp = dtp->dt_ddefs;

	if (ctfp != dmp->dm_ctfp && ctfp != FUNC3(dmp->dm_ctfp) &&
	    (type = FUNC1(dmp->dm_ctfp, ctfp, type)) == CTF_ERR) {
		dtp->dt_ctferr = FUNC2(dmp->dm_ctfp);
		return (FUNC7(dtp, EDT_CTF));
	}

	ptr = FUNC0(dmp->dm_ctfp, CTF_ADD_ROOT, type);

	if (ptr == CTF_ERR || FUNC6(dmp->dm_ctfp) == CTF_ERR) {
		dtp->dt_ctferr = FUNC2(dmp->dm_ctfp);
		return (FUNC7(dtp, EDT_CTF));
	}

	tip->dtt_object = dmp->dm_name;
	tip->dtt_ctfp = dmp->dm_ctfp;
	tip->dtt_type = ptr;
	tip->dtt_flags = bflags;

	return (0);
}