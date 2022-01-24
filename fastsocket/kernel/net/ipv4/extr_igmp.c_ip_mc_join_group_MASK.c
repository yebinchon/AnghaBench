#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct ip_mreqn {int imr_ifindex; TYPE_1__ imr_multiaddr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct TYPE_6__ {int imr_ifindex; TYPE_2__ imr_multiaddr; } ;
struct ip_mc_socklist {int /*<<< orphan*/  sfmode; int /*<<< orphan*/ * sflist; struct ip_mc_socklist* next; TYPE_3__ multi; } ;
struct inet_sock {struct ip_mc_socklist* mc_list; } ;
struct in_device {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MCAST_EXCLUDE ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 struct in_device* FUNC1 (struct net*,struct ip_mreqn*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct ip_mreqn*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_mc_socklist*,struct ip_mc_socklist*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct ip_mc_socklist* FUNC8 (struct sock*,int,int /*<<< orphan*/ ) ; 
 struct net* FUNC9 (struct sock*) ; 
 int sysctl_igmp_max_memberships ; 

int FUNC10(struct sock *sk , struct ip_mreqn *imr)
{
	int err;
	__be32 addr = imr->imr_multiaddr.s_addr;
	struct ip_mc_socklist *iml = NULL, *i;
	struct in_device *in_dev;
	struct inet_sock *inet = FUNC0(sk);
	struct net *net = FUNC9(sk);
	int ifindex;
	int count = 0;

	if (!FUNC3(addr))
		return -EINVAL;

	FUNC6();

	in_dev = FUNC1(net, imr);

	if (!in_dev) {
		iml = NULL;
		err = -ENODEV;
		goto done;
	}

	err = -EADDRINUSE;
	ifindex = imr->imr_ifindex;
	for (i = inet->mc_list; i; i = i->next) {
		if (i->multi.imr_multiaddr.s_addr == addr &&
		    i->multi.imr_ifindex == ifindex)
			goto done;
		count++;
	}
	err = -ENOBUFS;
	if (count >= sysctl_igmp_max_memberships)
		goto done;
	iml = FUNC8(sk, sizeof(*iml), GFP_KERNEL);
	if (iml == NULL)
		goto done;

	FUNC4(&iml->multi, imr, sizeof(*imr));
	iml->next = inet->mc_list;
	iml->sflist = NULL;
	iml->sfmode = MCAST_EXCLUDE;
	FUNC5(inet->mc_list, iml);
	FUNC2(in_dev, addr);
	err = 0;
done:
	FUNC7();
	return err;
}