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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_port {scalar_t__ usr_handle; } ;
struct sock {int /*<<< orphan*/  sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_ERR_OVERLOAD ; 
 int /*<<< orphan*/  TIPC_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static u32 FUNC5(struct tipc_port *tport, struct sk_buff *buf)
{
	struct sock *sk = (struct sock *)tport->usr_handle;
	u32 res;

	/*
	 * Process message if socket is unlocked; otherwise add to backlog queue
	 *
	 * This code is based on sk_receive_skb(), but must be distinct from it
	 * since a TIPC-specific filter/reject mechanism is utilized
	 */

	FUNC0(sk);
	if (!FUNC4(sk)) {
		res = FUNC2(sk, buf);
	} else {
		if (FUNC3(sk, buf, sk->sk_rcvbuf))
			res = TIPC_ERR_OVERLOAD;
		else
			res = TIPC_OK;
	}
	FUNC1(sk);

	return res;
}