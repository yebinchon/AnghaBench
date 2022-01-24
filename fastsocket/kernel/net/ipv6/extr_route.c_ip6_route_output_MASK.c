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
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct net {int dummy; } ;
struct flowi {int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  fl6_dst; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {unsigned int srcprefs; } ;

/* Variables and functions */
 unsigned int IPV6_PREFER_SRC_COA ; 
 unsigned int IPV6_PREFER_SRC_PUBLIC ; 
 unsigned int IPV6_PREFER_SRC_TMP ; 
 int RT6_LOOKUP_F_HAS_SADDR ; 
 int RT6_LOOKUP_F_IFACE ; 
 int RT6_LOOKUP_F_SRCPREF_COA ; 
 int RT6_LOOKUP_F_SRCPREF_PUBLIC ; 
 int RT6_LOOKUP_F_SRCPREF_TMP ; 
 struct dst_entry* FUNC0 (struct net*,struct flowi*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  ip6_pol_route_output ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

struct dst_entry * FUNC4(struct net *net, struct sock *sk,
				    struct flowi *fl)
{
	int flags = 0;

	if ((sk && sk->sk_bound_dev_if) || FUNC3(&fl->fl6_dst))
		flags |= RT6_LOOKUP_F_IFACE;

	if (!FUNC2(&fl->fl6_src))
		flags |= RT6_LOOKUP_F_HAS_SADDR;
	else if (sk) {
		unsigned int prefs = FUNC1(sk)->srcprefs;
		if (prefs & IPV6_PREFER_SRC_TMP)
			flags |= RT6_LOOKUP_F_SRCPREF_TMP;
		if (prefs & IPV6_PREFER_SRC_PUBLIC)
			flags |= RT6_LOOKUP_F_SRCPREF_PUBLIC;
		if (prefs & IPV6_PREFER_SRC_COA)
			flags |= RT6_LOOKUP_F_SRCPREF_COA;
	}

	return FUNC0(net, fl, flags, ip6_pol_route_output);
}