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
struct rpc_cred {int /*<<< orphan*/  cr_uid; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_4__ {int errno; } ;
struct gss_upcall_msg {int /*<<< orphan*/  waitqueue; TYPE_2__ msg; int /*<<< orphan*/ * ctx; TYPE_1__* inode; } ;
struct gss_cred {struct rpc_cred gc_base; } ;
struct gss_auth {int /*<<< orphan*/  client; } ;
struct TYPE_3__ {struct inode vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct gss_upcall_msg*) ; 
 int FUNC2 (struct gss_upcall_msg*) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_cred*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gss_upcall_msg*) ; 
 struct gss_upcall_msg* FUNC7 (int /*<<< orphan*/ ,struct gss_auth*,struct rpc_cred*) ; 
 scalar_t__ pipe_version ; 
 int /*<<< orphan*/  pipe_version_waitqueue ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static inline int
FUNC15(struct gss_auth *gss_auth, struct gss_cred *gss_cred)
{
	struct inode *inode;
	struct rpc_cred *cred = &gss_cred->gc_base;
	struct gss_upcall_msg *gss_msg;
	FUNC0(wait);
	int err = 0;

	FUNC3("RPC:       gss_upcall for uid %u\n", cred->cr_uid);
retry:
	gss_msg = FUNC7(gss_auth->client, gss_auth, cred);
	if (FUNC2(gss_msg) == -EAGAIN) {
		err = FUNC13(pipe_version_waitqueue,
				pipe_version >= 0, 15*HZ);
		if (err)
			goto out;
		if (pipe_version < 0)
			FUNC14();
		goto retry;
	}
	if (FUNC1(gss_msg)) {
		err = FUNC2(gss_msg);
		goto out;
	}
	inode = &gss_msg->inode->vfs_inode;
	for (;;) {
		FUNC8(&gss_msg->waitqueue, &wait, TASK_INTERRUPTIBLE);
		FUNC11(&inode->i_lock);
		if (gss_msg->ctx != NULL || gss_msg->msg.errno < 0) {
			break;
		}
		FUNC12(&inode->i_lock);
		if (FUNC10()) {
			err = -ERESTARTSYS;
			goto out_intr;
		}
		FUNC9();
	}
	if (gss_msg->ctx)
		FUNC5(cred, gss_msg->ctx);
	else
		err = gss_msg->msg.errno;
	FUNC12(&inode->i_lock);
out_intr:
	FUNC4(&gss_msg->waitqueue, &wait);
	FUNC6(gss_msg);
out:
	FUNC3("RPC:       gss_create_upcall for uid %u result %d\n",
			cred->cr_uid, err);
	return err;
}