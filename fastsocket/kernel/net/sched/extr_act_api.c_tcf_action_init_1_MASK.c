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
struct tc_action_ops {int (* init ) (struct nlattr*,struct nlattr*,struct tc_action*,int,int) ;int /*<<< orphan*/  owner; } ;
struct tc_action {struct tc_action_ops* ops; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct tc_action* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFNAMSIZ ; 
 size_t TCA_ACT_KIND ; 
 int /*<<< orphan*/  TCA_ACT_MAX ; 
 size_t TCA_ACT_OPTIONS ; 
 int /*<<< orphan*/  FUNC1 (struct tc_action*) ; 
 struct tc_action* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,struct nlattr*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (char*,char*,int) ; 
 int FUNC10 (struct nlattr*,struct nlattr*,struct tc_action*,int,int) ; 
 int FUNC11 (struct nlattr*,struct nlattr*,struct tc_action*,int,int) ; 
 struct tc_action_ops* FUNC12 (char*) ; 

struct tc_action *FUNC13(struct nlattr *nla, struct nlattr *est,
				    char *name, int ovr, int bind)
{
	struct tc_action *a;
	struct tc_action_ops *a_o;
	char act_name[IFNAMSIZ];
	struct nlattr *tb[TCA_ACT_MAX+1];
	struct nlattr *kind;
	int err;

	if (name == NULL) {
		err = FUNC4(tb, TCA_ACT_MAX, nla, NULL);
		if (err < 0)
			goto err_out;
		err = -EINVAL;
		kind = tb[TCA_ACT_KIND];
		if (kind == NULL)
			goto err_out;
		if (FUNC5(act_name, kind, IFNAMSIZ) >= IFNAMSIZ)
			goto err_out;
	} else {
		err = -EINVAL;
		if (FUNC9(act_name, name, IFNAMSIZ) >= IFNAMSIZ)
			goto err_out;
	}

	a_o = FUNC12(act_name);
	if (a_o == NULL) {
#ifdef CONFIG_MODULES
		rtnl_unlock();
		request_module("act_%s", act_name);
		rtnl_lock();

		a_o = tc_lookup_action_n(act_name);

		/* We dropped the RTNL semaphore in order to
		 * perform the module load.  So, even if we
		 * succeeded in loading the module we have to
		 * tell the caller to replay the request.  We
		 * indicate this using -EAGAIN.
		 */
		if (a_o != NULL) {
			err = -EAGAIN;
			goto err_mod;
		}
#endif
		err = -ENOENT;
		goto err_out;
	}

	err = -ENOMEM;
	a = FUNC2(sizeof(*a), GFP_KERNEL);
	if (a == NULL)
		goto err_mod;

	/* backward compatibility for policer */
	if (name == NULL)
		err = a_o->init(tb[TCA_ACT_OPTIONS], est, a, ovr, bind);
	else
		err = a_o->init(nla, est, a, ovr, bind);
	if (err < 0)
		goto err_free;

	/* module count goes up only when brand new policy is created
	   if it exists and is only bound to in a_o->init() then
	   ACT_P_CREATED is not returned (a zero is).
	*/
	if (err != ACT_P_CREATED)
		FUNC3(a_o->owner);
	a->ops = a_o;

	return a;

err_free:
	FUNC1(a);
err_mod:
	FUNC3(a_o->owner);
err_out:
	return FUNC0(err);
}