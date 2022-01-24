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
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  all; } ;
struct xfrm_policy {TYPE_2__ flo; int /*<<< orphan*/  timer; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  byidx; int /*<<< orphan*/  bydst; TYPE_1__ walk; int /*<<< orphan*/  xp_net; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct xfrm_policy* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct net*) ; 
 int /*<<< orphan*/  xfrm_policy_fc_ops ; 
 int /*<<< orphan*/  xfrm_policy_timer ; 

struct xfrm_policy *FUNC7(struct net *net, gfp_t gfp)
{
	struct xfrm_policy *policy;

	policy = FUNC3(sizeof(struct xfrm_policy), gfp);

	if (policy) {
		FUNC6(&policy->xp_net, net);
		FUNC1(&policy->walk.all);
		FUNC0(&policy->bydst);
		FUNC0(&policy->byidx);
		FUNC4(&policy->lock);
		FUNC2(&policy->refcnt, 1);
		FUNC5(&policy->timer, xfrm_policy_timer,
				(unsigned long)policy);
		policy->flo.ops = &xfrm_policy_fc_ops;
	}
	return policy;
}