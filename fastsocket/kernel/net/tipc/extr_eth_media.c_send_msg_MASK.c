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
struct TYPE_2__ {int /*<<< orphan*/  eth_addr; } ;
struct tipc_media_addr {TYPE_1__ dev_addr; } ;
struct tipc_bearer {scalar_t__ usr_handle; } ;
struct sk_buff {int /*<<< orphan*/  len; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct eth_bearer {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TIPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *buf, struct tipc_bearer *tb_ptr,
		    struct tipc_media_addr *dest)
{
	struct sk_buff *clone;
	struct net_device *dev;

	clone = FUNC2(buf, GFP_ATOMIC);
	if (clone) {
		FUNC3(clone);
		dev = ((struct eth_bearer *)(tb_ptr->usr_handle))->dev;
		clone->dev = dev;
		FUNC0(clone, dev, ETH_P_TIPC,
				 &dest->dev_addr.eth_addr,
				 dev->dev_addr, clone->len);
		FUNC1(clone);
	}
	return 0;
}