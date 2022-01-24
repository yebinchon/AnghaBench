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
typedef  int /*<<< orphan*/  u32 ;
struct tc_action {TYPE_1__* ops; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  index ;
struct TYPE_2__ {scalar_t__ (* lookup ) (struct tc_action*,int) ;int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct tc_action* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t TCA_ACT_INDEX ; 
 size_t TCA_ACT_KIND ; 
 int /*<<< orphan*/  TCA_ACT_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct tc_action*) ; 
 struct tc_action* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr*) ; 
 int FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct tc_action*,int) ; 
 TYPE_1__* FUNC8 (struct nlattr*) ; 

__attribute__((used)) static struct tc_action *
FUNC9(struct nlattr *nla, struct nlmsghdr *n, u32 pid)
{
	struct nlattr *tb[TCA_ACT_MAX+1];
	struct tc_action *a;
	int index;
	int err;

	err = FUNC6(tb, TCA_ACT_MAX, nla, NULL);
	if (err < 0)
		goto err_out;

	err = -EINVAL;
	if (tb[TCA_ACT_INDEX] == NULL ||
	    FUNC5(tb[TCA_ACT_INDEX]) < sizeof(index))
		goto err_out;
	index = FUNC4(tb[TCA_ACT_INDEX]);

	err = -ENOMEM;
	a = FUNC2(sizeof(struct tc_action), GFP_KERNEL);
	if (a == NULL)
		goto err_out;

	err = -EINVAL;
	a->ops = FUNC8(tb[TCA_ACT_KIND]);
	if (a->ops == NULL)
		goto err_free;
	if (a->ops->lookup == NULL)
		goto err_mod;
	err = -ENOENT;
	if (a->ops->lookup(a, index) == 0)
		goto err_mod;

	FUNC3(a->ops->owner);
	return a;

err_mod:
	FUNC3(a->ops->owner);
err_free:
	FUNC1(a);
err_out:
	return FUNC0(err);
}