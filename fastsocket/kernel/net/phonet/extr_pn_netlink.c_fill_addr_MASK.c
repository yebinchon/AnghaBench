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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct ifaddrmsg {int /*<<< orphan*/  ifa_index; int /*<<< orphan*/  ifa_scope; int /*<<< orphan*/  ifa_flags; scalar_t__ ifa_prefixlen; int /*<<< orphan*/  ifa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PHONET ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFA_F_PERMANENT ; 
 int /*<<< orphan*/  IFA_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_SCOPE_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ifaddrmsg* FUNC2 (struct nlmsghdr*) ; 
 int FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct net_device *dev, u8 addr,
			u32 pid, u32 seq, int event)
{
	struct ifaddrmsg *ifm;
	struct nlmsghdr *nlh;

	nlh = FUNC4(skb, pid, seq, event, sizeof(*ifm), 0);
	if (nlh == NULL)
		return -EMSGSIZE;

	ifm = FUNC2(nlh);
	ifm->ifa_family = AF_PHONET;
	ifm->ifa_prefixlen = 0;
	ifm->ifa_flags = IFA_F_PERMANENT;
	ifm->ifa_scope = RT_SCOPE_LINK;
	ifm->ifa_index = dev->ifindex;
	FUNC0(skb, IFA_LOCAL, addr);
	return FUNC3(skb, nlh);

nla_put_failure:
	FUNC1(skb, nlh);
	return -EMSGSIZE;
}