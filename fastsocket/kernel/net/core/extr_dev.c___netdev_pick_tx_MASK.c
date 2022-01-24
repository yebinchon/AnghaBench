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
typedef  int u16 ;
struct sock {int /*<<< orphan*/  sk_dst_cache; } ;
struct sk_buff {scalar_t__ ooo_okay; struct sock* sk; } ;
struct net_device {int real_num_tx_queues; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct sk_buff*) ; 
 struct dst_entry* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 struct dst_entry* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct net_device*,struct sk_buff*) ; 

u16 FUNC6(struct net_device *dev, struct sk_buff *skb)
{
	struct sock *sk = skb->sk;
	int queue_index = FUNC2(sk);

	if (queue_index < 0 || skb->ooo_okay ||
	    queue_index >= dev->real_num_tx_queues) {
		int new_index = FUNC0(dev, skb);
		if (new_index < 0)
			new_index = FUNC5(dev, skb);

		if (queue_index != new_index && sk) {
			struct dst_entry *dst =
				    FUNC1(sk->sk_dst_cache, 1);

			if (dst && FUNC4(skb) == dst)
				FUNC3(sk, new_index);

		}

		queue_index = new_index;
	}

	return queue_index;
}