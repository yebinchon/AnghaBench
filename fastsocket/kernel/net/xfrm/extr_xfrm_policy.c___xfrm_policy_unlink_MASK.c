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
struct xfrm_policy {TYPE_1__ walk; int /*<<< orphan*/  byidx; int /*<<< orphan*/  bydst; } ;
struct TYPE_4__ {int /*<<< orphan*/ * policy_count; } ;
struct net {TYPE_2__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct net* FUNC3 (struct xfrm_policy*) ; 

__attribute__((used)) static struct xfrm_policy *FUNC4(struct xfrm_policy *pol,
						int dir)
{
	struct net *net = FUNC3(pol);

	if (FUNC1(&pol->bydst))
		return NULL;

	FUNC0(&pol->bydst);
	FUNC0(&pol->byidx);
	FUNC2(&pol->walk.all);
	net->xfrm.policy_count[dir]--;

	return pol;
}