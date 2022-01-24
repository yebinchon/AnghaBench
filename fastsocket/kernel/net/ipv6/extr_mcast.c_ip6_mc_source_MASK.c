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
struct ipv6_mc_socklist {int sfmode; int /*<<< orphan*/  sflock; struct ip6_sf_socklist* sflist; int /*<<< orphan*/  addr; int /*<<< orphan*/  ifindex; struct ipv6_mc_socklist* next; } ;
struct ip6_sf_socklist {int sl_count; int sl_max; struct in6_addr* sl_addr; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct net_device* dev; } ;
struct group_source_req {int /*<<< orphan*/  gsr_interface; int /*<<< orphan*/  gsr_group; int /*<<< orphan*/  gsr_source; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IP6_SFBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MCAST_INCLUDE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 
 struct ipv6_pinfo* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*,struct in6_addr*,int,int,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inet6_dev*,struct in6_addr*,int,int,struct in6_addr*,int) ; 
 struct inet6_dev* FUNC6 (struct net*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC8 (struct in6_addr*) ; 
 int /*<<< orphan*/  ipv6_sk_mc_lock ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,struct in6_addr*) ; 
 int FUNC10 (struct in6_addr*,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct ip6_sf_socklist*,int /*<<< orphan*/ ) ; 
 struct ip6_sf_socklist* FUNC14 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC15 (struct sock*) ; 
 int sysctl_mld_max_msf ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(int add, int omode, struct sock *sk,
	struct group_source_req *pgsr)
{
	struct in6_addr *source, *group;
	struct ipv6_mc_socklist *pmc;
	struct net_device *dev;
	struct inet6_dev *idev;
	struct ipv6_pinfo *inet6 = FUNC3(sk);
	struct ip6_sf_socklist *psl;
	struct net *net = FUNC15(sk);
	int i, j, rv;
	int leavegroup = 0;
	int pmclocked = 0;
	int err;

	source = &((struct sockaddr_in6 *)&pgsr->gsr_source)->sin6_addr;
	group = &((struct sockaddr_in6 *)&pgsr->gsr_group)->sin6_addr;

	if (!FUNC8(group))
		return -EINVAL;

	idev = FUNC6(net, group, pgsr->gsr_interface);
	if (!idev)
		return -ENODEV;
	dev = idev->dev;

	err = -EADDRNOTAVAIL;

	FUNC11(&ipv6_sk_mc_lock);
	for (pmc=inet6->ipv6_mc_list; pmc; pmc=pmc->next) {
		if (pgsr->gsr_interface && pmc->ifindex != pgsr->gsr_interface)
			continue;
		if (FUNC7(&pmc->addr, group))
			break;
	}
	if (!pmc) {		/* must have a prior join */
		err = -EINVAL;
		goto done;
	}
	/* if a source filter was set, must be the same mode as before */
	if (pmc->sflist) {
		if (pmc->sfmode != omode) {
			err = -EINVAL;
			goto done;
		}
	} else if (pmc->sfmode != omode) {
		/* allow mode switches for empty-set filters */
		FUNC4(idev, group, omode, 0, NULL, 0);
		FUNC5(idev, group, pmc->sfmode, 0, NULL, 0);
		pmc->sfmode = omode;
	}

	FUNC16(&pmc->sflock);
	pmclocked = 1;

	psl = pmc->sflist;
	if (!add) {
		if (!psl)
			goto done;	/* err = -EADDRNOTAVAIL */
		rv = !0;
		for (i=0; i<psl->sl_count; i++) {
			rv = FUNC10(&psl->sl_addr[i], source,
				sizeof(struct in6_addr));
			if (rv == 0)
				break;
		}
		if (rv)		/* source not found */
			goto done;	/* err = -EADDRNOTAVAIL */

		/* special case - (INCLUDE, empty) == LEAVE_GROUP */
		if (psl->sl_count == 1 && omode == MCAST_INCLUDE) {
			leavegroup = 1;
			goto done;
		}

		/* update the interface filter */
		FUNC5(idev, group, omode, 1, source, 1);

		for (j=i+1; j<psl->sl_count; j++)
			psl->sl_addr[j-1] = psl->sl_addr[j];
		psl->sl_count--;
		err = 0;
		goto done;
	}
	/* else, add a new source to the filter */

	if (psl && psl->sl_count >= sysctl_mld_max_msf) {
		err = -ENOBUFS;
		goto done;
	}
	if (!psl || psl->sl_count == psl->sl_max) {
		struct ip6_sf_socklist *newpsl;
		int count = IP6_SFBLOCK;

		if (psl)
			count += psl->sl_max;
		newpsl = FUNC14(sk, FUNC0(count), GFP_ATOMIC);
		if (!newpsl) {
			err = -ENOBUFS;
			goto done;
		}
		newpsl->sl_max = count;
		newpsl->sl_count = count - IP6_SFBLOCK;
		if (psl) {
			for (i=0; i<psl->sl_count; i++)
				newpsl->sl_addr[i] = psl->sl_addr[i];
			FUNC13(sk, psl, FUNC0(psl->sl_max));
		}
		pmc->sflist = psl = newpsl;
	}
	rv = 1;	/* > 0 for insert logic below if sl_count is 0 */
	for (i=0; i<psl->sl_count; i++) {
		rv = FUNC10(&psl->sl_addr[i], source, sizeof(struct in6_addr));
		if (rv == 0)
			break;
	}
	if (rv == 0)		/* address already there is an error */
		goto done;
	for (j=psl->sl_count-1; j>=i; j--)
		psl->sl_addr[j+1] = psl->sl_addr[j];
	psl->sl_addr[i] = *source;
	psl->sl_count++;
	err = 0;
	/* update the interface list */
	FUNC4(idev, group, omode, 1, source, 1);
done:
	if (pmclocked)
		FUNC17(&pmc->sflock);
	FUNC12(&ipv6_sk_mc_lock);
	FUNC12(&idev->lock);
	FUNC2(idev);
	FUNC1(dev);
	if (leavegroup)
		return FUNC9(sk, pgsr->gsr_interface, group);
	return err;
}