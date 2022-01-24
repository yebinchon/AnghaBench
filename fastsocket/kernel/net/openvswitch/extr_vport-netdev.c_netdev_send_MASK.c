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
struct sk_buff {int len; TYPE_1__* dev; } ;
struct netdev_vport {TYPE_1__* dev; } ;
struct TYPE_2__ {int mtu; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 () ; 
 struct netdev_vport* FUNC3 (struct vport*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct vport *vport, struct sk_buff *skb)
{
	struct netdev_vport *netdev_vport = FUNC3(vport);
	int mtu = netdev_vport->dev->mtu;
	int len;

	if (FUNC7(FUNC4(skb) > mtu && !FUNC6(skb))) {
		if (FUNC2())
			FUNC5("%s: dropped over-mtu packet: %d > %d\n",
				     netdev_vport->dev->name,
				     FUNC4(skb), mtu);
		goto drop;
	}

	skb->dev = netdev_vport->dev;
	len = skb->len;
	FUNC0(skb);

	return len;

drop:
	FUNC1(skb);
	return 0;
}