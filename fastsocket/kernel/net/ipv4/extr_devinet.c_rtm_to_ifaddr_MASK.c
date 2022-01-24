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
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;
struct in_ifaddr {int ifa_prefixlen; int /*<<< orphan*/  ifa_label; void* ifa_broadcast; void* ifa_address; void* ifa_local; struct in_device* ifa_dev; int /*<<< orphan*/  ifa_scope; int /*<<< orphan*/  ifa_flags; int /*<<< orphan*/  ifa_mask; } ;
struct in_device {int dummy; } ;
struct ifaddrmsg {int ifa_prefixlen; int /*<<< orphan*/  ifa_scope; int /*<<< orphan*/  ifa_flags; int /*<<< orphan*/  ifa_index; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 struct in_ifaddr* FUNC0 (int) ; 
 size_t IFA_ADDRESS ; 
 size_t IFA_BROADCAST ; 
 size_t IFA_LABEL ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct in_device* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  ifa_ipv4_policy ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*) ; 
 struct in_ifaddr* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 struct ifaddrmsg* FUNC10 (struct nlmsghdr*) ; 
 int FUNC11 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct in_ifaddr *FUNC12(struct net *net, struct nlmsghdr *nlh)
{
	struct nlattr *tb[IFA_MAX+1];
	struct in_ifaddr *ifa;
	struct ifaddrmsg *ifm;
	struct net_device *dev;
	struct in_device *in_dev;
	int err;

	err = FUNC11(nlh, sizeof(*ifm), tb, IFA_MAX, ifa_ipv4_policy);
	if (err < 0)
		goto errout;

	ifm = FUNC10(nlh);
	err = -EINVAL;
	if (ifm->ifa_prefixlen > 32 || tb[IFA_LOCAL] == NULL)
		goto errout;

	dev = FUNC1(net, ifm->ifa_index);
	err = -ENODEV;
	if (dev == NULL)
		goto errout;

	in_dev = FUNC2(dev);
	err = -ENOBUFS;
	if (in_dev == NULL)
		goto errout;

	ifa = FUNC4();
	if (ifa == NULL)
		/*
		 * A potential indev allocation can be left alive, it stays
		 * assigned to its device and is destroy with it.
		 */
		goto errout;

	FUNC6(in_dev);
	FUNC3(in_dev);

	if (tb[IFA_ADDRESS] == NULL)
		tb[IFA_ADDRESS] = tb[IFA_LOCAL];

	ifa->ifa_prefixlen = ifm->ifa_prefixlen;
	ifa->ifa_mask = FUNC5(ifm->ifa_prefixlen);
	ifa->ifa_flags = ifm->ifa_flags;
	ifa->ifa_scope = ifm->ifa_scope;
	ifa->ifa_dev = in_dev;

	ifa->ifa_local = FUNC8(tb[IFA_LOCAL]);
	ifa->ifa_address = FUNC8(tb[IFA_ADDRESS]);

	if (tb[IFA_BROADCAST])
		ifa->ifa_broadcast = FUNC8(tb[IFA_BROADCAST]);

	if (tb[IFA_LABEL])
		FUNC9(ifa->ifa_label, tb[IFA_LABEL], IFNAMSIZ);
	else
		FUNC7(ifa->ifa_label, dev->name, IFNAMSIZ);

	return ifa;

errout:
	return FUNC0(err);
}