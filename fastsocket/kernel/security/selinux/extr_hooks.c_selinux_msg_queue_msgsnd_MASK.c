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
typedef  scalar_t__ u32 ;
struct msg_security_struct {scalar_t__ sid; } ;
struct TYPE_4__ {int /*<<< orphan*/  key; struct ipc_security_struct* security; } ;
struct msg_queue {TYPE_2__ q_perm; } ;
struct msg_msg {struct msg_security_struct* security; } ;
struct ipc_security_struct {scalar_t__ sid; } ;
struct TYPE_3__ {int /*<<< orphan*/  ipc_id; } ;
struct common_audit_data {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC ; 
 int /*<<< orphan*/  MSGQ__ENQUEUE ; 
 int /*<<< orphan*/  MSGQ__WRITE ; 
 int /*<<< orphan*/  MSG__SEND ; 
 int /*<<< orphan*/  SECCLASS_MSG ; 
 int /*<<< orphan*/  SECCLASS_MSGQ ; 
 scalar_t__ SECINITSID_UNLABELED ; 
 int FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct msg_queue *msq, struct msg_msg *msg, int msqflg)
{
	struct ipc_security_struct *isec;
	struct msg_security_struct *msec;
	struct common_audit_data ad;
	u32 sid = FUNC2();
	int rc;

	isec = msq->q_perm.security;
	msec = msg->security;

	/*
	 * First time through, need to assign label to the message
	 */
	if (msec->sid == SECINITSID_UNLABELED) {
		/*
		 * Compute new sid based on current process and
		 * message queue this message will be stored in
		 */
		rc = FUNC3(sid, isec->sid, SECCLASS_MSG,
					     &msec->sid);
		if (rc)
			return rc;
	}

	FUNC0(&ad, IPC);
	ad.u.ipc_id = msq->q_perm.key;

	/* Can this process write to the queue? */
	rc = FUNC1(sid, isec->sid, SECCLASS_MSGQ,
			  MSGQ__WRITE, &ad);
	if (!rc)
		/* Can this process send the message */
		rc = FUNC1(sid, msec->sid, SECCLASS_MSG,
				  MSG__SEND, &ad);
	if (!rc)
		/* Can the message be put in the queue? */
		rc = FUNC1(msec->sid, isec->sid, SECCLASS_MSGQ,
				  MSGQ__ENQUEUE, &ad);

	return rc;
}