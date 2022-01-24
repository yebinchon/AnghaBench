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
typedef  int u32 ;
struct tipc_msg {int dummy; } ;
struct socket {scalar_t__ state; } ;
struct sock {int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_receive_queue; struct socket* sk_socket; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int OVERLOAD_LIMIT_BASE ; 
 scalar_t__ SS_CONNECTED ; 
 scalar_t__ SS_CONNECTING ; 
 scalar_t__ SS_DISCONNECTING ; 
 scalar_t__ SS_LISTENING ; 
 scalar_t__ SS_READY ; 
 int TIPC_ERR_NO_PORT ; 
 int TIPC_ERR_OVERLOAD ; 
 int TIPC_OK ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct tipc_msg* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,char*) ; 
 scalar_t__ FUNC8 (struct tipc_msg*) ; 
 scalar_t__ FUNC9 (struct tipc_msg*) ; 
 scalar_t__ FUNC10 (struct tipc_msg*,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_queue_size ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC17(struct sock *sk, struct sk_buff *buf)
{
	struct socket *sock = sk->sk_socket;
	struct tipc_msg *msg = FUNC4(buf);
	u32 recv_q_len;

	/* Reject message if it is wrong sort of message for socket */

	/*
	 * WOULD IT BE BETTER TO JUST DISCARD THESE MESSAGES INSTEAD?
	 * "NO PORT" ISN'T REALLY THE RIGHT ERROR CODE, AND THERE MAY
	 * BE SECURITY IMPLICATIONS INHERENT IN REJECTING INVALID TRAFFIC
	 */

	if (sock->state == SS_READY) {
		if (FUNC5(msg)) {
			FUNC7(msg, "dispatch filter 1\n");
			return TIPC_ERR_NO_PORT;
		}
	} else {
		if (FUNC9(msg)) {
			FUNC7(msg, "dispatch filter 2\n");
			return TIPC_ERR_NO_PORT;
		}
		if (sock->state == SS_CONNECTED) {
			if (!FUNC5(msg)) {
				FUNC7(msg, "dispatch filter 3\n");
				return TIPC_ERR_NO_PORT;
			}
		}
		else if (sock->state == SS_CONNECTING) {
			if (!FUNC5(msg) && (FUNC8(msg) == 0)) {
				FUNC7(msg, "dispatch filter 4\n");
				return TIPC_ERR_NO_PORT;
			}
		}
		else if (sock->state == SS_LISTENING) {
			if (FUNC5(msg) || FUNC8(msg)) {
				FUNC7(msg, "dispatch filter 5\n");
				return TIPC_ERR_NO_PORT;
			}
		}
		else if (sock->state == SS_DISCONNECTING) {
			FUNC7(msg, "dispatch filter 6\n");
			return TIPC_ERR_NO_PORT;
		}
		else /* (sock->state == SS_UNCONNECTED) */ {
			if (FUNC5(msg) || FUNC8(msg)) {
				FUNC7(msg, "dispatch filter 7\n");
				return TIPC_ERR_NO_PORT;
			}
		}
	}

	/* Reject message if there isn't room to queue it */

	recv_q_len = (u32)FUNC3(&tipc_queue_size);
	if (FUNC14(recv_q_len >= OVERLOAD_LIMIT_BASE)) {
		if (FUNC10(msg, recv_q_len, OVERLOAD_LIMIT_BASE))
			return TIPC_ERR_OVERLOAD;
	}
	recv_q_len = FUNC11(&sk->sk_receive_queue);
	if (FUNC14(recv_q_len >= (OVERLOAD_LIMIT_BASE / 2))) {
		if (FUNC10(msg, recv_q_len, OVERLOAD_LIMIT_BASE / 2))
			return TIPC_ERR_OVERLOAD;
	}

	/* Enqueue message (finally!) */

	FUNC7(msg, "<DISP<: ");
	FUNC0(buf)->handle = FUNC6(msg);
	FUNC2(&tipc_queue_size);
	FUNC1(&sk->sk_receive_queue, buf);

	/* Initiate connection termination for an incoming 'FIN' */

	if (FUNC14(FUNC8(msg) && (sock->state == SS_CONNECTED))) {
		sock->state = SS_DISCONNECTING;
		FUNC12(FUNC13(sk));
	}

	if (FUNC15(sk->sk_sleep))
		FUNC16(sk->sk_sleep);
	return TIPC_OK;
}