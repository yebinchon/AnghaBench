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
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; } ;
struct sk_buff {int dummy; } ;
struct dn_scp {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ DN_CI ; 
 scalar_t__ DN_NC ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, struct sk_buff *skb)
{
	struct dn_scp *scp = FUNC0(sk);

	if (scp->state == DN_CI) {
		scp->state = DN_NC;
		sk->sk_state = TCP_CLOSE;
		if (!FUNC2(sk, SOCK_DEAD))
			sk->sk_state_change(sk);
	}

	FUNC1(skb);
}