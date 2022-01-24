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
struct TYPE_2__ {struct mfc6_cache** mfc6_cache_array; } ;
struct net {TYPE_1__ ipv6; } ;
struct mfc6_cache {int /*<<< orphan*/  mf6c_mcastgrp; int /*<<< orphan*/  mf6c_origin; struct mfc6_cache* next; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct in6_addr*,struct in6_addr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct in6_addr*) ; 

__attribute__((used)) static struct mfc6_cache *FUNC2(struct net *net,
					   struct in6_addr *origin,
					   struct in6_addr *mcastgrp)
{
	int line = FUNC0(mcastgrp, origin);
	struct mfc6_cache *c;

	for (c = net->ipv6.mfc6_cache_array[line]; c; c = c->next) {
		if (FUNC1(&c->mf6c_origin, origin) &&
		    FUNC1(&c->mf6c_mcastgrp, mcastgrp))
			break;
	}
	return c;
}