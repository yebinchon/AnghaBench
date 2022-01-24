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
struct tcf_nat {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  new_addr; int /*<<< orphan*/  old_addr; } ;
struct tcf_common {int dummy; } ;
struct tc_nat {int /*<<< orphan*/  action; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  new_addr; int /*<<< orphan*/  old_addr; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct tcf_common*) ; 
 int FUNC1 (struct tcf_common*) ; 
 int /*<<< orphan*/  TCA_NAT_MAX ; 
 size_t TCA_NAT_PARMS ; 
 int /*<<< orphan*/  nat_hash_info ; 
 int /*<<< orphan*/  nat_idx_gen ; 
 int /*<<< orphan*/  nat_policy ; 
 struct tc_nat* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct tcf_common* FUNC6 (int /*<<< orphan*/ ,struct tc_action*,int,int /*<<< orphan*/ *) ; 
 struct tcf_common* FUNC7 (int /*<<< orphan*/ ,struct nlattr*,struct tc_action*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_common*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tcf_common*,int,int /*<<< orphan*/ *) ; 
 struct tcf_nat* FUNC10 (struct tcf_common*) ; 

__attribute__((used)) static int FUNC11(struct nlattr *nla, struct nlattr *est,
			struct tc_action *a, int ovr, int bind)
{
	struct nlattr *tb[TCA_NAT_MAX + 1];
	struct tc_nat *parm;
	int ret = 0, err;
	struct tcf_nat *p;
	struct tcf_common *pc;

	if (nla == NULL)
		return -EINVAL;

	err = FUNC3(tb, TCA_NAT_MAX, nla, nat_policy);
	if (err < 0)
		return err;

	if (tb[TCA_NAT_PARMS] == NULL)
		return -EINVAL;
	parm = FUNC2(tb[TCA_NAT_PARMS]);

	pc = FUNC6(parm->index, a, bind, &nat_hash_info);
	if (!pc) {
		pc = FUNC7(parm->index, est, a, sizeof(*p), bind,
				     &nat_idx_gen, &nat_hash_info);
		if (FUNC0(pc))
		    return FUNC1(pc);
		p = FUNC10(pc);
		ret = ACT_P_CREATED;
	} else {
		p = FUNC10(pc);
		if (!ovr) {
			FUNC9(pc, bind, &nat_hash_info);
			return -EEXIST;
		}
	}

	FUNC4(&p->tcf_lock);
	p->old_addr = parm->old_addr;
	p->new_addr = parm->new_addr;
	p->mask = parm->mask;
	p->flags = parm->flags;

	p->tcf_action = parm->action;
	FUNC5(&p->tcf_lock);

	if (ret == ACT_P_CREATED)
		FUNC8(pc, &nat_hash_info);

	return ret;
}