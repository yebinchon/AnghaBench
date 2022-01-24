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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct in_ifaddr {int ifa_flags; scalar_t__* ifa_label; scalar_t__ ifa_broadcast; scalar_t__ ifa_local; scalar_t__ ifa_address; TYPE_2__* ifa_dev; int /*<<< orphan*/  ifa_scope; int /*<<< orphan*/  ifa_prefixlen; } ;
struct ifaddrmsg {int ifa_flags; int /*<<< orphan*/  ifa_index; int /*<<< orphan*/  ifa_scope; int /*<<< orphan*/  ifa_prefixlen; int /*<<< orphan*/  ifa_family; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFA_ADDRESS ; 
 int /*<<< orphan*/  IFA_BROADCAST ; 
 int IFA_F_PERMANENT ; 
 int /*<<< orphan*/  IFA_LABEL ; 
 int /*<<< orphan*/  IFA_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ifaddrmsg* FUNC3 (struct nlmsghdr*) ; 
 int FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct in_ifaddr *ifa,
			    u32 pid, u32 seq, int event, unsigned int flags)
{
	struct ifaddrmsg *ifm;
	struct nlmsghdr  *nlh;

	nlh = FUNC5(skb, pid, seq, event, sizeof(*ifm), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	ifm = FUNC3(nlh);
	ifm->ifa_family = AF_INET;
	ifm->ifa_prefixlen = ifa->ifa_prefixlen;
	ifm->ifa_flags = ifa->ifa_flags|IFA_F_PERMANENT;
	ifm->ifa_scope = ifa->ifa_scope;
	ifm->ifa_index = ifa->ifa_dev->dev->ifindex;

	if (ifa->ifa_address)
		FUNC0(skb, IFA_ADDRESS, ifa->ifa_address);

	if (ifa->ifa_local)
		FUNC0(skb, IFA_LOCAL, ifa->ifa_local);

	if (ifa->ifa_broadcast)
		FUNC0(skb, IFA_BROADCAST, ifa->ifa_broadcast);

	if (ifa->ifa_label[0])
		FUNC1(skb, IFA_LABEL, ifa->ifa_label);

	return FUNC4(skb, nlh);

nla_put_failure:
	FUNC2(skb, nlh);
	return -EMSGSIZE;
}