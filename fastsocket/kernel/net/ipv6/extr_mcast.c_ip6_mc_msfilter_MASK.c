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
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {struct ipv6_mc_socklist* ipv6_mc_list; } ;
struct ipv6_mc_socklist {int /*<<< orphan*/  sflock; int /*<<< orphan*/  sfmode; struct ip6_sf_socklist* sflist; int /*<<< orphan*/  addr; int /*<<< orphan*/  ifindex; struct ipv6_mc_socklist* next; } ;
struct ip6_sf_socklist {int sl_max; int sl_count; struct in6_addr* sl_addr; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct net_device* dev; } ;
struct group_filter {scalar_t__ gf_numsrc; int /*<<< orphan*/  gf_interface; int /*<<< orphan*/  gf_fmode; int /*<<< orphan*/ * gf_slist; int /*<<< orphan*/  gf_group; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MCAST_EXCLUDE ; 
 int /*<<< orphan*/  MCAST_INCLUDE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 
 struct ipv6_pinfo* FUNC3 (struct sock*) ; 
 int FUNC4 (struct inet6_dev*,struct in6_addr*,int /*<<< orphan*/ ,int,struct in6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inet6_dev*,struct in6_addr*,int /*<<< orphan*/ ,int,struct in6_addr*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC6 (struct net*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC8 (struct in6_addr*) ; 
 int /*<<< orphan*/  ipv6_sk_mc_lock ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct ip6_sf_socklist*,int /*<<< orphan*/ ) ; 
 struct ip6_sf_socklist* FUNC13 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct sock *sk, struct group_filter *gsf)
{
	struct in6_addr *group;
	struct ipv6_mc_socklist *pmc;
	struct net_device *dev;
	struct inet6_dev *idev;
	struct ipv6_pinfo *inet6 = FUNC3(sk);
	struct ip6_sf_socklist *newpsl, *psl;
	struct net *net = FUNC14(sk);
	int leavegroup = 0;
	int i, err;

	group = &((struct sockaddr_in6 *)&gsf->gf_group)->sin6_addr;

	if (!FUNC8(group))
		return -EINVAL;
	if (gsf->gf_fmode != MCAST_INCLUDE &&
	    gsf->gf_fmode != MCAST_EXCLUDE)
		return -EINVAL;

	idev = FUNC6(net, group, gsf->gf_interface);

	if (!idev)
		return -ENODEV;
	dev = idev->dev;

	err = 0;
	FUNC10(&ipv6_sk_mc_lock);

	if (gsf->gf_fmode == MCAST_INCLUDE && gsf->gf_numsrc == 0) {
		leavegroup = 1;
		goto done;
	}

	for (pmc=inet6->ipv6_mc_list; pmc; pmc=pmc->next) {
		if (pmc->ifindex != gsf->gf_interface)
			continue;
		if (FUNC7(&pmc->addr, group))
			break;
	}
	if (!pmc) {		/* must have a prior join */
		err = -EINVAL;
		goto done;
	}
	if (gsf->gf_numsrc) {
		newpsl = FUNC13(sk, FUNC0(gsf->gf_numsrc),
							  GFP_ATOMIC);
		if (!newpsl) {
			err = -ENOBUFS;
			goto done;
		}
		newpsl->sl_max = newpsl->sl_count = gsf->gf_numsrc;
		for (i=0; i<newpsl->sl_count; ++i) {
			struct sockaddr_in6 *psin6;

			psin6 = (struct sockaddr_in6 *)&gsf->gf_slist[i];
			newpsl->sl_addr[i] = psin6->sin6_addr;
		}
		err = FUNC4(idev, group, gsf->gf_fmode,
			newpsl->sl_count, newpsl->sl_addr, 0);
		if (err) {
			FUNC12(sk, newpsl, FUNC0(newpsl->sl_max));
			goto done;
		}
	} else {
		newpsl = NULL;
		(void) FUNC4(idev, group, gsf->gf_fmode, 0, NULL, 0);
	}

	FUNC15(&pmc->sflock);
	psl = pmc->sflist;
	if (psl) {
		(void) FUNC5(idev, group, pmc->sfmode,
			psl->sl_count, psl->sl_addr, 0);
		FUNC12(sk, psl, FUNC0(psl->sl_max));
	} else
		(void) FUNC5(idev, group, pmc->sfmode, 0, NULL, 0);
	pmc->sflist = newpsl;
	pmc->sfmode = gsf->gf_fmode;
	FUNC16(&pmc->sflock);
	err = 0;
done:
	FUNC11(&ipv6_sk_mc_lock);
	FUNC11(&idev->lock);
	FUNC2(idev);
	FUNC1(dev);
	if (leavegroup)
		err = FUNC9(sk, gsf->gf_interface, group);
	return err;
}