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
struct sock {int /*<<< orphan*/  sk_allocation; } ;
struct sk_buff {int dummy; } ;
struct nsp_conn_ack_msg {int msgflg; int /*<<< orphan*/  dstaddr; } ;
struct dn_scp {int /*<<< orphan*/  addrrem; } ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 struct sk_buff* FUNC1 (struct sock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 

void FUNC4 (struct sock *sk)
{
	struct dn_scp *scp = FUNC0(sk);
	struct sk_buff *skb = NULL;
	struct nsp_conn_ack_msg *msg;

	if ((skb = FUNC1(sk, 3, sk->sk_allocation)) == NULL)
		return;

	msg = (struct nsp_conn_ack_msg *)FUNC3(skb, 3);
	msg->msgflg = 0x24;
	msg->dstaddr = scp->addrrem;

	FUNC2(skb);
}