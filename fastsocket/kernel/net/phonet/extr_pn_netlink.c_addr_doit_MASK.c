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
typedef  int u8 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ifaddrmsg {int /*<<< orphan*/  ifa_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 scalar_t__ RTM_NEWADDR ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifa_phonet_policy ; 
 int FUNC3 (struct nlattr*) ; 
 struct ifaddrmsg* FUNC4 (struct nlmsghdr*) ; 
 int FUNC5 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*,int) ; 
 int FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct net_device*,int) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct nlmsghdr *nlh, void *attr)
{
	struct net *net = FUNC9(skb->sk);
	struct nlattr *tb[IFA_MAX+1];
	struct net_device *dev;
	struct ifaddrmsg *ifm;
	int err;
	u8 pnaddr;

	if (!FUNC2(CAP_SYS_ADMIN))
		return -EPERM;

	FUNC0();

	err = FUNC5(nlh, sizeof(*ifm), tb, IFA_MAX, ifa_phonet_policy);
	if (err < 0)
		return err;

	ifm = FUNC4(nlh);
	if (tb[IFA_LOCAL] == NULL)
		return -EINVAL;
	pnaddr = FUNC3(tb[IFA_LOCAL]);
	if (pnaddr & 3)
		/* Phonet addresses only have 6 high-order bits */
		return -EINVAL;

	dev = FUNC1(net, ifm->ifa_index);
	if (dev == NULL)
		return -ENODEV;

	if (nlh->nlmsg_type == RTM_NEWADDR)
		err = FUNC6(dev, pnaddr);
	else
		err = FUNC7(dev, pnaddr);
	if (!err)
		FUNC8(nlh->nlmsg_type, dev, pnaddr);
	return err;
}