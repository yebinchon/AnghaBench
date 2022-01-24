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
struct xfrm_userpolicy_info {int dummy; } ;
struct TYPE_2__ {int dead; } ;
struct xfrm_policy {TYPE_1__ walk; int /*<<< orphan*/  mark; int /*<<< orphan*/  type; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*,struct xfrm_userpolicy_info*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nlattr**) ; 
 int FUNC2 (struct xfrm_policy*,struct nlattr**) ; 
 int FUNC3 (struct xfrm_policy*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr**,int /*<<< orphan*/ *) ; 
 struct xfrm_policy* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_policy*) ; 

__attribute__((used)) static struct xfrm_policy *FUNC7(struct net *net, struct xfrm_userpolicy_info *p, struct nlattr **attrs, int *errp)
{
	struct xfrm_policy *xp = FUNC5(net, GFP_KERNEL);
	int err;

	if (!xp) {
		*errp = -ENOMEM;
		return NULL;
	}

	FUNC0(xp, p);

	err = FUNC1(&xp->type, attrs);
	if (err)
		goto error;

	if (!(err = FUNC3(xp, attrs)))
		err = FUNC2(xp, attrs);
	if (err)
		goto error;

	FUNC4(attrs, &xp->mark);

	return xp;
 error:
	*errp = err;
	xp->walk.dead = 1;
	FUNC6(xp);
	return NULL;
}