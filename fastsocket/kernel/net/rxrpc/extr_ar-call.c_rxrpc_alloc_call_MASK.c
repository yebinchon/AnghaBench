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
struct rxrpc_call {int acks_winsz; int rx_data_expect; int /*<<< orphan*/  creation_jif; scalar_t__ rx_data_eaten; scalar_t__ ackr_win_top; scalar_t__ rx_first_oos; int /*<<< orphan*/  sock_node; int /*<<< orphan*/  state; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  usage; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_waitq; int /*<<< orphan*/  rx_oos_queue; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  accept_link; int /*<<< orphan*/  processor; int /*<<< orphan*/  destroyer; int /*<<< orphan*/  resend_timer; int /*<<< orphan*/  ack_timer; int /*<<< orphan*/  deadspan; int /*<<< orphan*/  lifetimer; int /*<<< orphan*/  acks_window; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RXRPC_CALL_CLIENT_SEND_REQUEST ; 
 scalar_t__ RXRPC_MAXACKS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rxrpc_call*) ; 
 struct rxrpc_call* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxrpc_ack_time_expired ; 
 int /*<<< orphan*/  rxrpc_call_jar ; 
 int /*<<< orphan*/  rxrpc_call_life_expired ; 
 int /*<<< orphan*/  rxrpc_dead_call_expired ; 
 int /*<<< orphan*/  rxrpc_debug_id ; 
 int /*<<< orphan*/  rxrpc_destroy_call ; 
 int /*<<< orphan*/  rxrpc_process_call ; 
 int /*<<< orphan*/  rxrpc_resend_time_expired ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rxrpc_call *FUNC13(gfp_t gfp)
{
	struct rxrpc_call *call;

	call = FUNC7(rxrpc_call_jar, gfp);
	if (!call)
		return NULL;

	call->acks_winsz = 16;
	call->acks_window = FUNC5(call->acks_winsz * sizeof(unsigned long),
				    gfp);
	if (!call->acks_window) {
		FUNC6(rxrpc_call_jar, call);
		return NULL;
	}

	FUNC10(&call->lifetimer, &rxrpc_call_life_expired,
		    (unsigned long) call);
	FUNC10(&call->deadspan, &rxrpc_dead_call_expired,
		    (unsigned long) call);
	FUNC10(&call->ack_timer, &rxrpc_ack_time_expired,
		    (unsigned long) call);
	FUNC10(&call->resend_timer, &rxrpc_resend_time_expired,
		    (unsigned long) call);
	FUNC1(&call->destroyer, &rxrpc_destroy_call);
	FUNC1(&call->processor, &rxrpc_process_call);
	FUNC0(&call->accept_link);
	FUNC11(&call->rx_queue);
	FUNC11(&call->rx_oos_queue);
	FUNC4(&call->tx_waitq);
	FUNC12(&call->lock);
	FUNC9(&call->state_lock);
	FUNC3(&call->usage, 1);
	call->debug_id = FUNC2(&rxrpc_debug_id);
	call->state = RXRPC_CALL_CLIENT_SEND_REQUEST;

	FUNC8(&call->sock_node, 0xed, sizeof(call->sock_node));

	call->rx_data_expect = 1;
	call->rx_data_eaten = 0;
	call->rx_first_oos = 0;
	call->ackr_win_top = call->rx_data_eaten + 1 + RXRPC_MAXACKS;
	call->creation_jif = jiffies;
	return call;
}