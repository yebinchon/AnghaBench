#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  h_nodeid; } ;
struct TYPE_4__ {TYPE_1__ m_header; int /*<<< orphan*/  m_flags; int /*<<< orphan*/  m_result; int /*<<< orphan*/  m_type; } ;
struct dlm_ls {TYPE_2__ ls_stub_ms; } ;
struct dlm_lkb {scalar_t__ lkb_grmode; scalar_t__ lkb_rqmode; int /*<<< orphan*/  lkb_flags; int /*<<< orphan*/  lkb_resource; int /*<<< orphan*/  lkb_nodeid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_IFL_RESEND ; 
 scalar_t__ DLM_LOCK_IV ; 
 int /*<<< orphan*/  DLM_MSG_CONVERT_REPLY ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  RSB_RECOVER_CONVERT ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 
 scalar_t__ FUNC2 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lkb*) ; 

__attribute__((used)) static void FUNC5(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
	if (FUNC2(lkb)) {
		FUNC1(lkb);
		ls->ls_stub_ms.m_type = DLM_MSG_CONVERT_REPLY;
		ls->ls_stub_ms.m_result = -EINPROGRESS;
		ls->ls_stub_ms.m_flags = lkb->lkb_flags;
		ls->ls_stub_ms.m_header.h_nodeid = lkb->lkb_nodeid;
		FUNC0(lkb, &ls->ls_stub_ms);

		/* Same special case as in receive_rcom_lock_args() */
		lkb->lkb_grmode = DLM_LOCK_IV;
		FUNC3(lkb->lkb_resource, RSB_RECOVER_CONVERT);
		FUNC4(lkb);

	} else if (lkb->lkb_rqmode >= lkb->lkb_grmode) {
		lkb->lkb_flags |= DLM_IFL_RESEND;
	}

	/* lkb->lkb_rqmode < lkb->lkb_grmode shouldn't happen since down
	   conversions are async; there's no reply from the remote master */
}