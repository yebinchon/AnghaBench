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
struct xfrm_policy_afinfo {size_t family; int /*<<< orphan*/ * garbage_collect; struct dst_ops* dst_ops; } ;
struct dst_ops {int /*<<< orphan*/ * link_failure; int /*<<< orphan*/ * negative_advice; int /*<<< orphan*/ * check; int /*<<< orphan*/ * kmem_cachep; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 size_t NPROTO ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy_afinfo*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 struct xfrm_policy_afinfo** xfrm_policy_afinfo ; 
 int /*<<< orphan*/  xfrm_policy_afinfo_lock ; 

int FUNC6(struct xfrm_policy_afinfo *afinfo)
{
	int err = 0;
	if (FUNC5(afinfo == NULL))
		return -EINVAL;
	if (FUNC5(afinfo->family >= NPROTO))
		return -EAFNOSUPPORT;
	FUNC2(&xfrm_policy_afinfo_lock);
	if (FUNC1(xfrm_policy_afinfo[afinfo->family] != NULL)) {
		if (FUNC5(xfrm_policy_afinfo[afinfo->family] != afinfo))
			err = -EINVAL;
		else
			FUNC0(xfrm_policy_afinfo[afinfo->family],
					 NULL);
	}
	FUNC3(&xfrm_policy_afinfo_lock);
	if (!err) {
		struct dst_ops *dst_ops = afinfo->dst_ops;

		FUNC4();

		dst_ops->kmem_cachep = NULL;
		dst_ops->check = NULL;
		dst_ops->negative_advice = NULL;
		dst_ops->link_failure = NULL;
		afinfo->garbage_collect = NULL;
	}
	return err;
}