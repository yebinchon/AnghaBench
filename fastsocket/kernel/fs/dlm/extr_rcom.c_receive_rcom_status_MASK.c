#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rcom_config {int dummy; } ;
struct TYPE_2__ {int h_nodeid; } ;
struct dlm_rcom {scalar_t__ rc_buf; int /*<<< orphan*/  rc_result; int /*<<< orphan*/  rc_seq; int /*<<< orphan*/  rc_seq_reply; int /*<<< orphan*/  rc_id; TYPE_1__ rc_header; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_RCOM_STATUS_REPLY ; 
 int FUNC0 (struct dlm_ls*,int,int /*<<< orphan*/ ,int,struct dlm_rcom**,struct dlm_mhandle**) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*,struct rcom_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,struct dlm_mhandle*,struct dlm_rcom*) ; 

__attribute__((used)) static void FUNC4(struct dlm_ls *ls, struct dlm_rcom *rc_in)
{
	struct dlm_rcom *rc;
	struct dlm_mhandle *mh;
	int error, nodeid = rc_in->rc_header.h_nodeid;

	error = FUNC0(ls, nodeid, DLM_RCOM_STATUS_REPLY,
			    sizeof(struct rcom_config), &rc, &mh);
	if (error)
		return;
	rc->rc_id = rc_in->rc_id;
	rc->rc_seq_reply = rc_in->rc_seq;
	rc->rc_result = FUNC1(ls);
	FUNC2(ls, (struct rcom_config *) rc->rc_buf);

	FUNC3(ls, mh, rc);
}