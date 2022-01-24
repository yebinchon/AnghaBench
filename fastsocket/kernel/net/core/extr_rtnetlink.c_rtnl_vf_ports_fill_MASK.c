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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__* netdev_ops; TYPE_2__ dev; } ;
struct TYPE_3__ {int (* ndo_get_vf_port ) (struct net_device*,int,struct sk_buff*) ;} ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_PORT_VF ; 
 int /*<<< orphan*/  IFLA_VF_PORT ; 
 int /*<<< orphan*/  IFLA_VF_PORTS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,int,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct net_device *dev)
{
	struct nlattr *vf_ports;
	struct nlattr *vf_port;
	int vf;
	int err;

	vf_ports = FUNC4(skb, IFLA_VF_PORTS);
	if (!vf_ports)
		return -EMSGSIZE;

	for (vf = 0; vf < FUNC1(dev->dev.parent); vf++) {
		vf_port = FUNC4(skb, IFLA_VF_PORT);
		if (!vf_port)
			goto nla_put_failure;
		FUNC0(skb, IFLA_PORT_VF, vf);
		err = dev->netdev_ops->ndo_get_vf_port(dev, vf, skb);
		if (err == -EMSGSIZE)
			goto nla_put_failure;
		if (err) {
			FUNC2(skb, vf_port);
			continue;
		}
		FUNC3(skb, vf_port);
	}

	FUNC3(skb, vf_ports);

	return 0;

nla_put_failure:
	FUNC2(skb, vf_ports);
	return -EMSGSIZE;
}