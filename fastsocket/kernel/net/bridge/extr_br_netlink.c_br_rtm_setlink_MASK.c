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
typedef  scalar_t__ u8 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {struct net_bridge_port* br_port; } ;
struct net_bridge_port {scalar_t__ state; TYPE_1__* br; } ;
struct net {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_family; int /*<<< orphan*/  ifi_index; } ;
struct TYPE_2__ {scalar_t__ stp_enabled; } ;

/* Variables and functions */
 scalar_t__ AF_BRIDGE ; 
 scalar_t__ BR_KERNEL_STP ; 
 scalar_t__ BR_STATE_BLOCKING ; 
 scalar_t__ BR_STATE_DISABLED ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENETDOWN ; 
 int ENODEV ; 
 int EPFNOSUPPORT ; 
 int /*<<< orphan*/  IFLA_PROTINFO ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr*) ; 
 struct ifinfomsg* FUNC6 (struct nlmsghdr*) ; 
 struct nlattr* FUNC7 (struct nlmsghdr*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nlmsghdr*) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb,  struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC9(skb->sk);
	struct ifinfomsg *ifm;
	struct nlattr *protinfo;
	struct net_device *dev;
	struct net_bridge_port *p;
	u8 new_state;

	if (FUNC8(nlh) < sizeof(*ifm))
		return -EINVAL;

	ifm = FUNC6(nlh);
	if (ifm->ifi_family != AF_BRIDGE)
		return -EPFNOSUPPORT;

	protinfo = FUNC7(nlh, sizeof(*ifm), IFLA_PROTINFO);
	if (!protinfo || FUNC5(protinfo) < sizeof(u8))
		return -EINVAL;

	new_state = FUNC4(protinfo);
	if (new_state > BR_STATE_BLOCKING)
		return -EINVAL;

	dev = FUNC0(net, ifm->ifi_index);
	if (!dev)
		return -ENODEV;

	p = dev->br_port;
	if (!p)
		return -EINVAL;

	/* if kernel STP is running, don't allow changes */
	if (p->br->stp_enabled == BR_KERNEL_STP)
		return -EBUSY;

	if (!FUNC3(dev) ||
	    (!FUNC2(dev) && new_state != BR_STATE_DISABLED))
		return -ENETDOWN;

	p->state = new_state;
	FUNC1(p);
	return 0;
}