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
struct net_device {int /*<<< orphan*/  features; } ;
struct TYPE_2__ {int* prio; } ;
struct net_bridge {int bridge_max_age; int max_age; int bridge_hello_time; int hello_time; int bridge_forward_delay; int forward_delay; int ageing_time; int /*<<< orphan*/  age_list; scalar_t__ topology_change_detected; scalar_t__ topology_change; scalar_t__ root_port; scalar_t__ root_path_cost; TYPE_1__ bridge_id; TYPE_1__ designated_root; int /*<<< orphan*/  stp_enabled; int /*<<< orphan*/  feature_mask; int /*<<< orphan*/  group_addr; int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  port_list; int /*<<< orphan*/  lock; struct net_device* dev; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_NO_STP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  br_dev_setup ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*) ; 
 int /*<<< orphan*/  br_reserved_address ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct net*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_bridge* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device *FUNC9(struct net *net, const char *name)
{
	struct net_bridge *br;
	struct net_device *dev;

	dev = FUNC1(sizeof(struct net_bridge), name,
			   br_dev_setup);

	if (!dev)
		return NULL;
	FUNC5(dev, net);

	br = FUNC7(dev);
	br->dev = dev;

	FUNC8(&br->lock);
	FUNC0(&br->port_list);
	FUNC8(&br->hash_lock);

	br->bridge_id.prio[0] = 0x80;
	br->bridge_id.prio[1] = 0x00;

	FUNC6(br->group_addr, br_reserved_address, ETH_ALEN);

	br->feature_mask = dev->features;
	br->stp_enabled = BR_NO_STP;
	br->designated_root = br->bridge_id;
	br->root_path_cost = 0;
	br->root_port = 0;
	br->bridge_max_age = br->max_age = 20 * HZ;
	br->bridge_hello_time = br->hello_time = 2 * HZ;
	br->bridge_forward_delay = br->forward_delay = 15 * HZ;
	br->topology_change = 0;
	br->topology_change_detected = 0;
	br->ageing_time = 300 * HZ;

	FUNC3(br);

	FUNC0(&br->age_list);

	FUNC4(br);
	FUNC2(br);

	return dev;
}