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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {scalar_t__ ifindex; scalar_t__ mtu; scalar_t__ iflink; int /*<<< orphan*/  dev_addr; scalar_t__ addr_len; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  operstate; } ;
struct net_bridge_port {int /*<<< orphan*/  state; struct net_device* dev; struct net_bridge* br; } ;
struct net_bridge {TYPE_1__* dev; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; int /*<<< orphan*/  ifi_flags; int /*<<< orphan*/  ifi_type; scalar_t__ __ifi_pad; int /*<<< orphan*/  ifi_family; } ;
struct TYPE_2__ {scalar_t__ ifindex; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BRIDGE ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_ADDRESS ; 
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_LINK ; 
 int /*<<< orphan*/  IFLA_MASTER ; 
 int /*<<< orphan*/  IFLA_MTU ; 
 int /*<<< orphan*/  IFLA_OPERSTATE ; 
 int /*<<< orphan*/  IFLA_PROTINFO ; 
 int /*<<< orphan*/  IF_OPER_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC4 (struct net_device const*) ; 
 scalar_t__ FUNC5 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ifinfomsg* FUNC7 (struct nlmsghdr*) ; 
 int FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, const struct net_bridge_port *port,
			  u32 pid, u32 seq, int event, unsigned int flags)
{
	const struct net_bridge *br = port->br;
	const struct net_device *dev = port->dev;
	struct ifinfomsg *hdr;
	struct nlmsghdr *nlh;
	u8 operstate = FUNC5(dev) ? dev->operstate : IF_OPER_DOWN;

	FUNC10("br_fill_info event %d port %s master %s\n",
		 event, dev->name, br->dev->name);

	nlh = FUNC9(skb, pid, seq, event, sizeof(*hdr), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	hdr = FUNC7(nlh);
	hdr->ifi_family = AF_BRIDGE;
	hdr->__ifi_pad = 0;
	hdr->ifi_type = dev->type;
	hdr->ifi_index = dev->ifindex;
	hdr->ifi_flags = FUNC4(dev);
	hdr->ifi_change = 0;

	FUNC1(skb, IFLA_IFNAME, dev->name);
	FUNC2(skb, IFLA_MASTER, br->dev->ifindex);
	FUNC2(skb, IFLA_MTU, dev->mtu);
	FUNC3(skb, IFLA_OPERSTATE, operstate);

	if (dev->addr_len)
		FUNC0(skb, IFLA_ADDRESS, dev->addr_len, dev->dev_addr);

	if (dev->ifindex != dev->iflink)
		FUNC2(skb, IFLA_LINK, dev->iflink);

	if (event == RTM_NEWLINK)
		FUNC3(skb, IFLA_PROTINFO, port->state);

	return FUNC8(skb, nlh);

nla_put_failure:
	FUNC6(skb, nlh);
	return -EMSGSIZE;
}