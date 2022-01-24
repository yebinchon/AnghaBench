#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {scalar_t__ ifindex; scalar_t__ mtu; scalar_t__ iflink; int /*<<< orphan*/  dev_addr; scalar_t__ addr_len; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct inet6_dev {struct net_device* dev; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; int /*<<< orphan*/  ifi_flags; int /*<<< orphan*/  ifi_type; scalar_t__ __ifi_pad; int /*<<< orphan*/  ifi_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_ADDRESS ; 
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_LINK ; 
 int /*<<< orphan*/  IFLA_MTU ; 
 int /*<<< orphan*/  IFLA_PROTINFO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,void*) ; 
 void* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ifinfomsg* FUNC8 (struct nlmsghdr*) ; 
 int FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct inet6_dev *idev,
			     u32 pid, u32 seq, int event, unsigned int flags)
{
	struct net_device *dev = idev->dev;
	struct ifinfomsg *hdr;
	struct nlmsghdr *nlh;
	void *protoinfo;

	nlh = FUNC10(skb, pid, seq, event, sizeof(*hdr), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	hdr = FUNC8(nlh);
	hdr->ifi_family = AF_INET6;
	hdr->__ifi_pad = 0;
	hdr->ifi_type = dev->type;
	hdr->ifi_index = dev->ifindex;
	hdr->ifi_flags = FUNC3(dev);
	hdr->ifi_change = 0;

	FUNC1(skb, IFLA_IFNAME, dev->name);

	if (dev->addr_len)
		FUNC0(skb, IFLA_ADDRESS, dev->addr_len, dev->dev_addr);

	FUNC2(skb, IFLA_MTU, dev->mtu);
	if (dev->ifindex != dev->iflink)
		FUNC2(skb, IFLA_LINK, dev->iflink);

	protoinfo = FUNC6(skb, IFLA_PROTINFO);
	if (protoinfo == NULL)
		goto nla_put_failure;

	if (FUNC4(skb, idev) < 0)
		goto nla_put_failure;

	FUNC5(skb, protoinfo);
	return FUNC9(skb, nlh);

nla_put_failure:
	FUNC7(skb, nlh);
	return -EMSGSIZE;
}