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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct ifaddrmsg {int /*<<< orphan*/  ifa_index; } ;
struct dn_ifaddr {int /*<<< orphan*/  ifa_label; int /*<<< orphan*/  ifa_local; struct dn_ifaddr* ifa_next; } ;
struct dn_dev {struct dn_ifaddr* ifa_list; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENODEV ; 
 size_t IFA_LABEL ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 struct dn_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dn_dev*,struct dn_ifaddr**,int) ; 
 int /*<<< orphan*/  dn_ifa_policy ; 
 struct net init_net ; 
 scalar_t__ FUNC2 (struct nlattr*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct nlattr*,int /*<<< orphan*/ ) ; 
 struct ifaddrmsg* FUNC4 (struct nlmsghdr*) ; 
 int FUNC5 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC6(skb->sk);
	struct nlattr *tb[IFA_MAX+1];
	struct dn_dev *dn_db;
	struct ifaddrmsg *ifm;
	struct dn_ifaddr *ifa, **ifap;
	int err = -EINVAL;

	if (net != &init_net)
		goto errout;

	err = FUNC5(nlh, sizeof(*ifm), tb, IFA_MAX, dn_ifa_policy);
	if (err < 0)
		goto errout;

	err = -ENODEV;
	ifm = FUNC4(nlh);
	if ((dn_db = FUNC0(ifm->ifa_index)) == NULL)
		goto errout;

	err = -EADDRNOTAVAIL;
	for (ifap = &dn_db->ifa_list; (ifa = *ifap); ifap = &ifa->ifa_next) {
		if (tb[IFA_LOCAL] &&
		    FUNC2(tb[IFA_LOCAL], &ifa->ifa_local, 2))
			continue;

		if (tb[IFA_LABEL] && FUNC3(tb[IFA_LABEL], ifa->ifa_label))
			continue;

		FUNC1(dn_db, ifap, 1);
		return 0;
	}

errout:
	return err;
}