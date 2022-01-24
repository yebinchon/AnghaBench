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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct in_ifaddr {scalar_t__ ifa_local; scalar_t__ ifa_prefixlen; int /*<<< orphan*/  ifa_label; struct in_ifaddr* ifa_next; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;
struct ifaddrmsg {scalar_t__ ifa_prefixlen; int /*<<< orphan*/  ifa_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENODEV ; 
 size_t IFA_ADDRESS ; 
 size_t IFA_LABEL ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*,struct in_ifaddr**,int,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifa_ipv4_policy ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct in_ifaddr*) ; 
 struct in_device* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nlattr*) ; 
 scalar_t__ FUNC7 (struct nlattr*,int /*<<< orphan*/ ) ; 
 struct ifaddrmsg* FUNC8 (struct nlmsghdr*) ; 
 int FUNC9 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC10(skb->sk);
	struct nlattr *tb[IFA_MAX+1];
	struct in_device *in_dev;
	struct ifaddrmsg *ifm;
	struct in_ifaddr *ifa, **ifap;
	int err = -EINVAL;

	FUNC0();

	err = FUNC9(nlh, sizeof(*ifm), tb, IFA_MAX, ifa_ipv4_policy);
	if (err < 0)
		goto errout;

	ifm = FUNC8(nlh);
	in_dev = FUNC5(net, ifm->ifa_index);
	if (in_dev == NULL) {
		err = -ENODEV;
		goto errout;
	}

	FUNC2(in_dev);

	for (ifap = &in_dev->ifa_list; (ifa = *ifap) != NULL;
	     ifap = &ifa->ifa_next) {
		if (tb[IFA_LOCAL] &&
		    ifa->ifa_local != FUNC6(tb[IFA_LOCAL]))
			continue;

		if (tb[IFA_LABEL] && FUNC7(tb[IFA_LABEL], ifa->ifa_label))
			continue;

		if (tb[IFA_ADDRESS] &&
		    (ifm->ifa_prefixlen != ifa->ifa_prefixlen ||
		    !FUNC4(FUNC6(tb[IFA_ADDRESS]), ifa)))
			continue;

		FUNC3(in_dev, ifap, 1, nlh, FUNC1(skb).pid);
		return 0;
	}

	err = -EADDRNOTAVAIL;
errout:
	return err;
}