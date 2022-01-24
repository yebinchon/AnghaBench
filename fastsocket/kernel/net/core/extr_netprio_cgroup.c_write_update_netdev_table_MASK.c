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
typedef  scalar_t__ u32 ;
struct netprio_map {scalar_t__ priomap_len; } ;
struct netdev_priomap_info {int /*<<< orphan*/  priomap; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct netdev_priomap_info priomap_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  max_prioidx ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 struct netprio_map* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	int ret = 0;
	u32 max_len;
	struct netprio_map *map;
	struct netdev_priomap_info *data;

	FUNC4();
	max_len = FUNC0(&max_prioidx) + 1;
	data = &FUNC2(dev)->priomap_data;
	map = FUNC3(data->priomap);
	if (!map || map->priomap_len < max_len)
		ret = FUNC1(dev, max_len);
	FUNC5();

	return ret;
}