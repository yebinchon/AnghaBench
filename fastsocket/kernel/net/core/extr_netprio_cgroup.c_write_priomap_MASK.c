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
typedef  size_t u32 ;
struct netprio_map {size_t* priomap; } ;
struct netdev_priomap_info {int /*<<< orphan*/  priomap; } ;
struct net_device {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;
struct TYPE_4__ {size_t prioidx; } ;
struct TYPE_3__ {struct netdev_priomap_info priomap_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC0 (struct cgroup*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct net_device*) ; 
 struct netprio_map* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 size_t FUNC9 (char*,char**,int) ; 
 int FUNC10 (char*) ; 
 char* FUNC11 (char*,char*) ; 
 int FUNC12 (struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct cgroup *cgrp, struct cftype *cft,
			 const char *buffer)
{
	char *devname = FUNC4(buffer, GFP_KERNEL);
	int ret = -EINVAL;
	u32 prioidx = FUNC0(cgrp)->prioidx;
	u32 priority;
	char *priostr, *eps;
	struct net_device *dev;
	struct netprio_map *map;
	struct netdev_priomap_info *data;

	if (!devname)
		return -ENOMEM;

	/*
	 * Minimally sized valid priomap string
	 */
	if (FUNC10(devname) < 3)
		goto out_free_devname;

	priostr = FUNC11(devname, " ");
	if (!priostr)
		goto out_free_devname;

	/*
	 *Separate the devname from the associated priority
	 *and advance the priostr poitner to the priority value
	 */
	*priostr = '\0';
	priostr++;

	/*
	 * If the priostr points to NULL, we're at the end of the passed
	 * in string, and its not a valid write
	 */
	if (*priostr == '\0')
		goto out_free_devname;

	priority = FUNC9(priostr, &eps , 10);
	if (*eps != ' ' && *eps != '\n' && *eps != '\0')
		goto out_free_devname;

	ret = -ENODEV;

	dev = FUNC1(&init_net, devname);
	if (!dev)
		goto out_free_devname;

	ret = FUNC12(dev);
	if (ret < 0)
		goto out_put_dev;

	FUNC7();
	data = &FUNC5(dev)->priomap_data;
	map = FUNC6(data->priomap);
	if (map)
		map->priomap[prioidx] = priority;
	FUNC8();

out_put_dev:
	FUNC2(dev);

out_free_devname:
	FUNC3(devname);
	return ret;
}