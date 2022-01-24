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
struct sock {int dummy; } ;
struct rtable {scalar_t__ rt_dst; scalar_t__ rt_src; } ;
struct net {int dummy; } ;
struct flowi {scalar_t__ fl4_dst; scalar_t__ fl4_src; scalar_t__ proto; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int EREMOTE ; 
 int /*<<< orphan*/  XFRM_LOOKUP_WAIT ; 
 int FUNC0 (struct net*,struct rtable**,struct flowi*) ; 
 int FUNC1 (struct net*,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net*,struct rtable**,struct flowi*) ; 

int FUNC3(struct net *net, struct rtable **rp, struct flowi *flp,
			 struct sock *sk, int flags)
{
	int err;

	if ((err = FUNC0(net, rp, flp)) != 0)
		return err;

	if (flp->proto) {
		if (!flp->fl4_src)
			flp->fl4_src = (*rp)->rt_src;
		if (!flp->fl4_dst)
			flp->fl4_dst = (*rp)->rt_dst;
		err = FUNC1(net, (struct dst_entry **)rp, flp, sk,
				    flags ? XFRM_LOOKUP_WAIT : 0);
		if (err == -EREMOTE)
			err = FUNC2(net, rp, flp);

		return err;
	}

	return 0;
}