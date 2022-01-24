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
struct sk_buff {int len; scalar_t__ data; } ;
struct packet_type {int dummy; } ;
struct net_device {int /*<<< orphan*/  type; } ;
struct dev_rcv_lists {int dummy; } ;
struct can_frame {int can_dlc; } ;
struct TYPE_2__ {int /*<<< orphan*/  matches_delta; int /*<<< orphan*/  matches; int /*<<< orphan*/  rx_frames_delta; int /*<<< orphan*/  rx_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_CAN ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct dev_rcv_lists*,struct sk_buff*) ; 
 struct dev_rcv_lists can_rx_alldev_list ; 
 TYPE_1__ can_stats ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct dev_rcv_lists* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *dev,
		   struct packet_type *pt, struct net_device *orig_dev)
{
	struct dev_rcv_lists *d;
	struct can_frame *cf = (struct can_frame *)skb->data;
	int matches;

	if (!FUNC6(FUNC3(dev), &init_net))
		goto drop;

	if (FUNC0(dev->type != ARPHRD_CAN ||
		      skb->len != sizeof(struct can_frame) ||
		      cf->can_dlc > 8,
		      "PF_CAN: dropped non conform skbuf: "
		      "dev type %d, len %d, can_dlc %d\n",
		      dev->type, skb->len, cf->can_dlc))
		goto drop;

	/* update statistics */
	can_stats.rx_frames++;
	can_stats.rx_frames_delta++;

	FUNC7();

	/* deliver the packet to sockets listening on all devices */
	matches = FUNC1(&can_rx_alldev_list, skb);

	/* find receive list for this device */
	d = FUNC4(dev);
	if (d)
		matches += FUNC1(d, skb);

	FUNC8();

	/* consume the skbuff allocated by the netdevice driver */
	FUNC2(skb);

	if (matches > 0) {
		can_stats.matches++;
		can_stats.matches_delta++;
	}

	return NET_RX_SUCCESS;

drop:
	FUNC5(skb);
	return NET_RX_DROP;
}