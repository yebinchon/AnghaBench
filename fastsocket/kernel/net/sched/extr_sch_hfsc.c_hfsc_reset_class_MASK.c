#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hfsc_class {int cl_flags; int /*<<< orphan*/  cl_usc; int /*<<< orphan*/  cl_ulimit; int /*<<< orphan*/  cl_fsc; int /*<<< orphan*/  cl_virtual; int /*<<< orphan*/  cl_rsc; int /*<<< orphan*/  cl_deadline; int /*<<< orphan*/  qdisc; void* cf_tree; void* vt_tree; scalar_t__ cl_nactive; scalar_t__ cl_cfmin; scalar_t__ cl_myfadj; scalar_t__ cl_myf; scalar_t__ cl_f; scalar_t__ cl_parentperiod; scalar_t__ cl_vtperiod; scalar_t__ cl_pcvtoff; scalar_t__ cl_cvtoff; scalar_t__ cl_cvtmax; scalar_t__ cl_cvtmin; scalar_t__ cl_vtoff; scalar_t__ cl_vtadj; scalar_t__ cl_vt; scalar_t__ cl_e; scalar_t__ cl_d; scalar_t__ cl_cumul; scalar_t__ cl_total; } ;

/* Variables and functions */
 int HFSC_FSC ; 
 int HFSC_RSC ; 
 int HFSC_USC ; 
 void* RB_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct hfsc_class *cl)
{
	cl->cl_total        = 0;
	cl->cl_cumul        = 0;
	cl->cl_d            = 0;
	cl->cl_e            = 0;
	cl->cl_vt           = 0;
	cl->cl_vtadj        = 0;
	cl->cl_vtoff        = 0;
	cl->cl_cvtmin       = 0;
	cl->cl_cvtmax       = 0;
	cl->cl_cvtoff       = 0;
	cl->cl_pcvtoff      = 0;
	cl->cl_vtperiod     = 0;
	cl->cl_parentperiod = 0;
	cl->cl_f            = 0;
	cl->cl_myf          = 0;
	cl->cl_myfadj       = 0;
	cl->cl_cfmin        = 0;
	cl->cl_nactive      = 0;

	cl->vt_tree = RB_ROOT;
	cl->cf_tree = RB_ROOT;
	FUNC0(cl->qdisc);

	if (cl->cl_flags & HFSC_RSC)
		FUNC1(&cl->cl_deadline, &cl->cl_rsc, 0, 0);
	if (cl->cl_flags & HFSC_FSC)
		FUNC1(&cl->cl_virtual, &cl->cl_fsc, 0, 0);
	if (cl->cl_flags & HFSC_USC)
		FUNC1(&cl->cl_ulimit, &cl->cl_usc, 0, 0);
}