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
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ dev; TYPE_1__* netdev_ops; } ;
struct ifla_port_vsi {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ndo_get_vf_port; } ;

/* Variables and functions */
 int PORT_PROFILE_MAX ; 
 int PORT_UUID_MAX ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(const struct net_device *dev)
{
	size_t port_size = FUNC1(4)		/* PORT_VF */
		+ FUNC1(PORT_PROFILE_MAX)	/* PORT_PROFILE */
		+ FUNC1(sizeof(struct ifla_port_vsi))
							/* PORT_VSI_TYPE */
		+ FUNC1(PORT_UUID_MAX)		/* PORT_INSTANCE_UUID */
		+ FUNC1(PORT_UUID_MAX)		/* PORT_HOST_UUID */
		+ FUNC1(1)			/* PROT_VDP_REQUEST */
		+ FUNC1(2);			/* PORT_VDP_RESPONSE */
	size_t vf_ports_size = FUNC1(sizeof(struct nlattr));
	size_t vf_port_size = FUNC1(sizeof(struct nlattr))
		+ port_size;
	size_t port_self_size = FUNC1(sizeof(struct nlattr))
		+ port_size;

	if (!dev->netdev_ops->ndo_get_vf_port || !dev->dev.parent)
		return 0;
	if (FUNC0(dev->dev.parent))
		return port_self_size + vf_ports_size +
			vf_port_size * FUNC0(dev->dev.parent);
	else
		return port_self_size;
}