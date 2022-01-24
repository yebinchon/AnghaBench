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
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_5__ {int /*<<< orphan*/  dtdt_size; scalar_t__ dtdt_pad; int /*<<< orphan*/  dtdt_flags; int /*<<< orphan*/  dtdt_ckind; int /*<<< orphan*/  dtdt_kind; } ;
typedef  TYPE_1__ dtrace_diftype_t ;
struct TYPE_6__ {scalar_t__ dn_ctfp; scalar_t__ dn_type; int dn_flags; } ;
typedef  TYPE_2__ dt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_K_UNKNOWN ; 
 int /*<<< orphan*/  DIF_TF_BYREF ; 
 int /*<<< orphan*/  DIF_TF_BYUREF ; 
 int /*<<< orphan*/  DIF_TYPE_CTF ; 
 int /*<<< orphan*/  DIF_TYPE_STRING ; 
 int DT_NF_REF ; 
 int DT_NF_USERLAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

void
FUNC5(dtrace_hdl_t *dtp, const dt_node_t *dnp, dtrace_diftype_t *tp)
{
	if (dnp->dn_ctfp == FUNC0(dtp) &&
	    dnp->dn_type == FUNC1(dtp)) {
		tp->dtdt_kind = DIF_TYPE_STRING;
		tp->dtdt_ckind = CTF_K_UNKNOWN;
	} else {
		tp->dtdt_kind = DIF_TYPE_CTF;
		tp->dtdt_ckind = FUNC2(dnp->dn_ctfp,
		    FUNC3(dnp->dn_ctfp, dnp->dn_type));
	}

	tp->dtdt_flags = (dnp->dn_flags & DT_NF_REF) ?
	    (dnp->dn_flags & DT_NF_USERLAND) ? DIF_TF_BYUREF :
	    DIF_TF_BYREF : 0;
	tp->dtdt_pad = 0;
	tp->dtdt_size = FUNC4(dnp->dn_ctfp, dnp->dn_type);
}