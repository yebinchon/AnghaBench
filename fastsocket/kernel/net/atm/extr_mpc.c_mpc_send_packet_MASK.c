#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct mpoa_client {int number_of_mps_macs; TYPE_1__* old_ops; scalar_t__ mps_macs; } ;
struct iphdr {int dummy; } ;
struct ethhdr {scalar_t__ h_proto; int /*<<< orphan*/  h_dest; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int ihl; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* ndo_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct mpoa_client* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb,
					 struct net_device *dev)
{
	struct mpoa_client *mpc;
	struct ethhdr *eth;
	int i = 0;

	mpc = FUNC1(dev); /* this should NEVER fail */
	if(mpc == NULL) {
		FUNC4("mpoa: (%s) mpc_send_packet: no MPC found\n", dev->name);
		goto non_ip;
	}

	eth = (struct ethhdr *)skb->data;
	if (eth->h_proto != FUNC2(ETH_P_IP))
		goto non_ip; /* Multi-Protocol Over ATM :-) */

	/* Weed out funny packets (e.g., AF_PACKET or raw). */
	if (skb->len < ETH_HLEN + sizeof(struct iphdr))
		goto non_ip;
	FUNC6(skb, ETH_HLEN);
	if (skb->len < ETH_HLEN + FUNC3(skb)->ihl * 4 || FUNC3(skb)->ihl < 5)
		goto non_ip;

	while (i < mpc->number_of_mps_macs) {
		if (!FUNC0(eth->h_dest, (mpc->mps_macs + i*ETH_ALEN)))
			if ( FUNC5(skb, mpc) == 0 )           /* try shortcut */
				return NETDEV_TX_OK;                      /* success!     */
		i++;
	}

 non_ip:
	return mpc->old_ops->ndo_start_xmit(skb,dev);
}