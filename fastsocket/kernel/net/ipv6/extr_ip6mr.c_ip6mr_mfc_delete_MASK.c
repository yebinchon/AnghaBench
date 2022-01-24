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
struct TYPE_4__ {struct mfc6_cache** mfc6_cache_array; } ;
struct net {TYPE_1__ ipv6; } ;
struct mfc6_cache {struct mfc6_cache* next; int /*<<< orphan*/  mf6c_mcastgrp; int /*<<< orphan*/  mf6c_origin; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin6_addr; } ;
struct mf6cctl {TYPE_3__ mf6cc_mcastgrp; TYPE_2__ mf6cc_origin; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mfc6_cache*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mrt_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct mf6cctl *mfc)
{
	int line;
	struct mfc6_cache *c, **cp;

	line = FUNC0(&mfc->mf6cc_mcastgrp.sin6_addr, &mfc->mf6cc_origin.sin6_addr);

	for (cp = &net->ipv6.mfc6_cache_array[line];
	     (c = *cp) != NULL; cp = &c->next) {
		if (FUNC2(&c->mf6c_origin, &mfc->mf6cc_origin.sin6_addr) &&
		    FUNC2(&c->mf6c_mcastgrp, &mfc->mf6cc_mcastgrp.sin6_addr)) {
			FUNC3(&mrt_lock);
			*cp = c->next;
			FUNC4(&mrt_lock);

			FUNC1(c);
			return 0;
		}
	}
	return -ENOENT;
}