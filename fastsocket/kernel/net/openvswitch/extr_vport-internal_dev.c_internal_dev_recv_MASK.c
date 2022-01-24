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
struct vport {int dummy; } ;
struct sk_buff {int len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 TYPE_1__* FUNC2 (struct vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct vport *vport, struct sk_buff *skb)
{
	struct net_device *netdev = FUNC2(vport)->dev;
	int len;

	len = skb->len;

	FUNC6(skb);
	FUNC4(skb);
	FUNC5(skb);

	skb->dev = netdev;
	skb->pkt_type = PACKET_HOST;
	skb->protocol = FUNC1(skb, netdev);
	FUNC7(skb, FUNC0(skb), ETH_HLEN);

	FUNC3(skb);

	return len;
}