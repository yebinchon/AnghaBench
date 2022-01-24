#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  all; } ;
struct xfrm_policy {int /*<<< orphan*/  index; int /*<<< orphan*/  byidx; int /*<<< orphan*/  bydst; TYPE_1__ walk; int /*<<< orphan*/  family; int /*<<< orphan*/  selector; } ;
struct TYPE_4__ {int /*<<< orphan*/  policy_hash_work; int /*<<< orphan*/ * policy_count; struct hlist_head* policy_byidx; int /*<<< orphan*/  policy_all; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct hlist_head* FUNC3 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct net*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_policy*) ; 
 struct net* FUNC7 (struct xfrm_policy*) ; 

__attribute__((used)) static void FUNC8(struct xfrm_policy *pol, int dir)
{
	struct net *net = FUNC7(pol);
	struct hlist_head *chain = FUNC3(net, &pol->selector,
						     pol->family, dir);

	FUNC2(&pol->walk.all, &net->xfrm.policy_all);
	FUNC0(&pol->bydst, chain);
	FUNC0(&pol->byidx, net->xfrm.policy_byidx+FUNC1(net, pol->index));
	net->xfrm.policy_count[dir]++;
	FUNC6(pol);

	if (FUNC5(net, dir, NULL))
		FUNC4(&net->xfrm.policy_hash_work);
}