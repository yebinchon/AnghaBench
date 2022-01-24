#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  unsigned int u64 ;
typedef  unsigned int u32 ;
typedef  unsigned int u16 ;
struct sk_buff {unsigned int protocol; TYPE_2__* sk; int /*<<< orphan*/  priority; } ;
struct netdev_qos_info {TYPE_1__* tc_to_txq; scalar_t__ num_tc; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {struct netdev_qos_info qos_data; } ;
struct TYPE_5__ {unsigned int sk_hash; } ;
struct TYPE_4__ {unsigned int offset; unsigned int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  hashrnd ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct net_device const*) ; 
 size_t FUNC2 (struct net_device const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct sk_buff const*) ; 
 scalar_t__ FUNC4 (struct sk_buff const*) ; 
 scalar_t__ FUNC5 (int) ; 

u16 FUNC6(const struct net_device *dev, const struct sk_buff *skb,
		  unsigned int num_tx_queues)
{
	struct netdev_qos_info *qos = &FUNC1(dev)->qos_data;
	u32 hash;
	u16 qoffset = 0;
	u16 qcount = num_tx_queues;

	if (FUNC4(skb)) {
		hash = FUNC3(skb);
		while (FUNC5(hash >= num_tx_queues))
			hash -= num_tx_queues;
		return hash;
	}

	if (qos->num_tc) {
		u8 tc = FUNC2(dev, skb->priority);
		qoffset = qos->tc_to_txq[tc].offset;
		qcount = qos->tc_to_txq[tc].count;
	}

	if (skb->sk && skb->sk->sk_hash)
		hash = skb->sk->sk_hash;
	else
		hash = skb->protocol;

	hash = FUNC0(hash, hashrnd);

	return (u16) (((u64) hash * qcount) >> 32) + qoffset;
}