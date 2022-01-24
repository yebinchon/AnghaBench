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
struct tipc_port {int /*<<< orphan*/  ref; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ handle; } ;

/* Variables and functions */
 scalar_t__ SS_CONNECTED ; 
 scalar_t__ SS_CONNECTING ; 
 scalar_t__ SS_DISCONNECTING ; 
 int /*<<< orphan*/  TIPC_ERR_NO_PORT ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_queue_size ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct tipc_port* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  tipc_user_count ; 

__attribute__((used)) static int FUNC14(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct tipc_port *tport;
	struct sk_buff *buf;
	int res;

	/*
	 * Exit if socket isn't fully initialized (occurs when a failed accept()
	 * releases a pre-allocated child socket that was never used)
	 */

	if (sk == NULL)
		return 0;

	tport = FUNC13(sk);
	FUNC6(sk);

	/*
	 * Reject all unreceived messages, except on an active connection
	 * (which disconnects locally & sends a 'FIN+' to peer)
	 */

	while (sock->state != SS_DISCONNECTING) {
		buf = FUNC1(&sk->sk_receive_queue);
		if (buf == NULL)
			break;
		FUNC2(&tipc_queue_size);
		if (FUNC0(buf)->handle != FUNC7(FUNC4(buf)))
			FUNC3(buf);
		else {
			if ((sock->state == SS_CONNECTING) ||
			    (sock->state == SS_CONNECTED)) {
				sock->state = SS_DISCONNECTING;
				FUNC11(tport->ref);
			}
			FUNC12(buf, TIPC_ERR_NO_PORT);
		}
	}

	/*
	 * Delete TIPC port; this ensures no more messages are queued
	 * (also disconnects an active connection & sends a 'FIN-' to peer)
	 */

	res = FUNC10(tport->ref);

	/* Discard any remaining (connection-based) messages in receive queue */

	FUNC5(sk);

	/* Reject any messages that accumulated in backlog queue */

	sock->state = SS_DISCONNECTING;
	FUNC8(sk);

	FUNC9(sk);
	sock->sk = NULL;

	FUNC2(&tipc_user_count);
	return res;
}