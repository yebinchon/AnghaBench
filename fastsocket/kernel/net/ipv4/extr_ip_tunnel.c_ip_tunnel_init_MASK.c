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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  destructor; } ;
struct iphdr {int version; int ihl; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; struct net_device* dev; int /*<<< orphan*/  gro_cells; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  ip_tunnel_dev_free ; 
 struct ip_tunnel* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC1(dev);
	struct iphdr *iph = &tunnel->parms.iph;
	int err;

	dev->destructor	= ip_tunnel_dev_free;

	err = FUNC0(&tunnel->gro_cells, dev);
	if (err)
		return err;

	tunnel->dev = dev;
	FUNC2(tunnel->parms.name, dev->name);
	iph->version		= 4;
	iph->ihl		= 5;

	return 0;
}