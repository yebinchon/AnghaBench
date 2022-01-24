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
struct sk_buff {int dummy; } ;
struct afs_call {int error; scalar_t__ state; TYPE_1__* type; int /*<<< orphan*/ * rxcall; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  waitq; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destructor ) (struct afs_call*) ;} ;

/* Variables and functions */
 scalar_t__ AFS_CALL_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int /*<<< orphan*/  RX_CALL_DEAD ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  myself ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct afs_call*) ; 

__attribute__((used)) static int FUNC18(struct afs_call *call)
{
	struct sk_buff *skb;
	int ret;

	FUNC0(myself, current);

	FUNC3("");

	FUNC5(&call->waitq, &myself);
	for (;;) {
		FUNC13(TASK_INTERRUPTIBLE);

		/* deliver any messages that are in the queue */
		if (!FUNC16(&call->rx_queue)) {
			FUNC1(TASK_RUNNING);
			FUNC6(call);
			continue;
		}

		ret = call->error;
		if (call->state >= AFS_CALL_COMPLETE)
			break;
		ret = -EINTR;
		if (FUNC14(current))
			break;
		FUNC12();
	}

	FUNC9(&call->waitq, &myself);
	FUNC1(TASK_RUNNING);

	/* kill the call */
	if (call->state < AFS_CALL_COMPLETE) {
		FUNC2("call incomplete");
		FUNC10(call->rxcall, RX_CALL_DEAD);
		while ((skb = FUNC15(&call->rx_queue)))
			FUNC8(skb);
	}

	FUNC2("call complete");
	FUNC11(call->rxcall);
	call->rxcall = NULL;
	call->type->destructor(call);
	FUNC7(call);
	FUNC4(" = %d", ret);
	return ret;
}