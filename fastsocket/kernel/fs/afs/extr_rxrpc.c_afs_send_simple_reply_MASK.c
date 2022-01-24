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
struct msghdr {int msg_iovlen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct afs_call {TYPE_1__* type; int /*<<< orphan*/ * rxcall; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destructor ) (struct afs_call*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CALL_AWAIT_ACK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RX_USER_ABORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_call*) ; 

void FUNC8(struct afs_call *call, const void *buf, size_t len)
{
	struct msghdr msg;
	struct iovec iov[1];
	int n;

	FUNC1("");

	iov[0].iov_base		= (void *) buf;
	iov[0].iov_len		= len;
	msg.msg_name		= NULL;
	msg.msg_namelen		= 0;
	msg.msg_iov		= iov;
	msg.msg_iovlen		= 1;
	msg.msg_control		= NULL;
	msg.msg_controllen	= 0;
	msg.msg_flags		= 0;

	call->state = AFS_CALL_AWAIT_ACK;
	n = FUNC6(call->rxcall, &msg, len);
	if (n >= 0) {
		FUNC2(" [replied]");
		return;
	}
	if (n == -ENOMEM) {
		FUNC0("oom");
		FUNC4(call->rxcall, RX_USER_ABORT);
	}
	FUNC5(call->rxcall);
	call->rxcall = NULL;
	call->type->destructor(call);
	FUNC3(call);
	FUNC2(" [error]");
}