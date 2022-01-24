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
struct sockaddr_can {int /*<<< orphan*/  can_ifindex; int /*<<< orphan*/  can_family; } ;
struct sock {int dummy; } ;
struct sk_buff {TYPE_1__* dev; scalar_t__ cb; struct sock* sk; } ;
struct raw_sock {int /*<<< orphan*/  recv_own_msgs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_CAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_can*,int /*<<< orphan*/ ,int) ; 
 struct raw_sock* FUNC3 (struct sock*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb, void *data)
{
	struct sock *sk = (struct sock *)data;
	struct raw_sock *ro = FUNC3(sk);
	struct sockaddr_can *addr;

	/* check the received tx sock reference */
	if (!ro->recv_own_msgs && skb->sk == sk)
		return;

	/* clone the given skb to be able to enqueue it into the rcv queue */
	skb = FUNC4(skb, GFP_ATOMIC);
	if (!skb)
		return;

	/*
	 *  Put the datagram to the queue so that raw_recvmsg() can
	 *  get it from there.  We need to pass the interface index to
	 *  raw_recvmsg().  We pass a whole struct sockaddr_can in skb->cb
	 *  containing the interface index.
	 */

	FUNC0(sizeof(skb->cb) < sizeof(struct sockaddr_can));
	addr = (struct sockaddr_can *)skb->cb;
	FUNC2(addr, 0, sizeof(*addr));
	addr->can_family  = AF_CAN;
	addr->can_ifindex = skb->dev->ifindex;

	if (FUNC5(sk, skb) < 0)
		FUNC1(skb);
}