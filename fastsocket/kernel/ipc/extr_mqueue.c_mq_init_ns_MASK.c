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
struct ipc_namespace {int /*<<< orphan*/ * mq_mnt; int /*<<< orphan*/  mq_msgsize_default; int /*<<< orphan*/  mq_msg_default; int /*<<< orphan*/  mq_msgsize_max; int /*<<< orphan*/  mq_msg_max; int /*<<< orphan*/  mq_queues_max; scalar_t__ mq_queues_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFLT_MSG ; 
 int /*<<< orphan*/  DFLT_MSGMAX ; 
 int /*<<< orphan*/  DFLT_MSGSIZE ; 
 int /*<<< orphan*/  DFLT_MSGSIZEMAX ; 
 int /*<<< orphan*/  DFLT_QUEUESMAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,struct ipc_namespace*) ; 
 int /*<<< orphan*/  mqueue_fs_type ; 

int FUNC3(struct ipc_namespace *ns)
{
	ns->mq_queues_count  = 0;
	ns->mq_queues_max    = DFLT_QUEUESMAX;
	ns->mq_msg_max       = DFLT_MSGMAX;
	ns->mq_msgsize_max   = DFLT_MSGSIZEMAX;
	ns->mq_msg_default   = DFLT_MSG;
	ns->mq_msgsize_default  = DFLT_MSGSIZE;

	ns->mq_mnt = FUNC2(&mqueue_fs_type, ns);
	if (FUNC0(ns->mq_mnt)) {
		int err = FUNC1(ns->mq_mnt);
		ns->mq_mnt = NULL;
		return err;
	}
	return 0;
}