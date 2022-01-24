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
struct sock {int sk_state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dccps_role; } ;

/* Variables and functions */
#define  DCCP_ACTIVE_CLOSEREQ 133 
#define  DCCP_CLOSING 132 
#define  DCCP_OPEN 131 
#define  DCCP_PARTOPEN 130 
#define  DCCP_PASSIVE_CLOSE 129 
#define  DCCP_REQUESTING 128 
 int /*<<< orphan*/  DCCP_RESET_CODE_CLOSED ; 
 int /*<<< orphan*/  DCCP_ROLE_CLIENT ; 
 int /*<<< orphan*/  POLL_HUP ; 
 int /*<<< orphan*/  SOCK_WAKE_WAITD ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sk_buff *skb)
{
	int queued = 0;

	switch (sk->sk_state) {
	/*
	 * We ignore Close when received in one of the following states:
	 *  - CLOSED		(may be a late or duplicate packet)
	 *  - PASSIVE_CLOSEREQ	(the peer has sent a CloseReq earlier)
	 *  - RESPOND		(already handled by dccp_check_req)
	 */
	case DCCP_CLOSING:
		/*
		 * Simultaneous-close: receiving a Close after sending one. This
		 * can happen if both client and server perform active-close and
		 * will result in an endless ping-pong of crossing and retrans-
		 * mitted Close packets, which only terminates when one of the
		 * nodes times out (min. 64 seconds). Quicker convergence can be
		 * achieved when one of the nodes acts as tie-breaker.
		 * This is ok as both ends are done with data transfer and each
		 * end is just waiting for the other to acknowledge termination.
		 */
		if (FUNC4(sk)->dccps_role != DCCP_ROLE_CLIENT)
			break;
		/* fall through */
	case DCCP_REQUESTING:
	case DCCP_ACTIVE_CLOSEREQ:
		FUNC2(sk, DCCP_RESET_CODE_CLOSED);
		FUNC0(sk);
		break;
	case DCCP_OPEN:
	case DCCP_PARTOPEN:
		/* Give waiting application a chance to read pending data */
		queued = 1;
		FUNC1(sk, skb);
		FUNC3(sk, DCCP_PASSIVE_CLOSE);
		/* fall through */
	case DCCP_PASSIVE_CLOSE:
		/*
		 * Retransmitted Close: we have already enqueued the first one.
		 */
		FUNC5(sk, SOCK_WAKE_WAITD, POLL_HUP);
	}
	return queued;
}