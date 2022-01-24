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
struct work_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rxrpc_call {int dummy; } ;
struct afs_call {struct rxrpc_call* rxcall; TYPE_1__* type; int /*<<< orphan*/  state; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  waitq; int /*<<< orphan*/ * wait_mode; int /*<<< orphan*/  async_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CALL_AWAIT_OP_ID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_1__ afs_RXCMxxxx ; 
 int /*<<< orphan*/  afs_async_incoming_call ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  afs_incoming_calls ; 
 int /*<<< orphan*/  afs_outstanding_calls ; 
 int /*<<< orphan*/  afs_process_async_call ; 
 int /*<<< orphan*/  afs_socket ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct afs_call* FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct rxrpc_call* FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct work_struct *work)
{
	struct rxrpc_call *rxcall;
	struct afs_call *call = NULL;
	struct sk_buff *skb;

	while ((skb = FUNC11(&afs_incoming_calls))) {
		FUNC2("new call");

		/* don't need the notification */
		FUNC4(skb);

		if (!call) {
			call = FUNC8(sizeof(struct afs_call), GFP_KERNEL);
			if (!call) {
				FUNC10(afs_socket);
				return;
			}

			FUNC0(&call->async_work, afs_process_async_call);
			call->wait_mode = &afs_async_incoming_call;
			call->type = &afs_RXCMxxxx;
			FUNC7(&call->waitq);
			FUNC12(&call->rx_queue);
			call->state = AFS_CALL_AWAIT_OP_ID;

			FUNC2("CALL %p{%s} [%d]",
			       call, call->type->name,
			       FUNC6(&afs_outstanding_calls));
			FUNC5(&afs_outstanding_calls);
		}

		rxcall = FUNC9(afs_socket,
						  (unsigned long) call);
		if (!FUNC1(rxcall)) {
			call->rxcall = rxcall;
			call = NULL;
		}
	}

	if (call)
		FUNC3(call);
}