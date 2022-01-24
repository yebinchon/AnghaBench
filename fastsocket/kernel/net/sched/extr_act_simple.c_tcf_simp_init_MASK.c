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
struct tcf_defact {int /*<<< orphan*/  tcf_action; } ;
struct tcf_common {int dummy; } ;
struct tc_defact {int /*<<< orphan*/  action; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct tcf_common*) ; 
 int FUNC1 (struct tcf_common*) ; 
 size_t TCA_DEF_DATA ; 
 int /*<<< orphan*/  TCA_DEF_MAX ; 
 size_t TCA_DEF_PARMS ; 
 int FUNC2 (struct tcf_defact*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_common*) ; 
 void* FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_defact*,char*,struct tc_defact*) ; 
 int /*<<< orphan*/  simp_hash_info ; 
 int /*<<< orphan*/  simp_idx_gen ; 
 int /*<<< orphan*/  simple_policy ; 
 struct tcf_common* FUNC7 (int /*<<< orphan*/ ,struct tc_action*,int,int /*<<< orphan*/ *) ; 
 struct tcf_common* FUNC8 (int /*<<< orphan*/ ,struct nlattr*,struct tc_action*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tcf_common*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tcf_defact*,int) ; 
 struct tcf_defact* FUNC11 (struct tcf_common*) ; 

__attribute__((used)) static int FUNC12(struct nlattr *nla, struct nlattr *est,
			 struct tc_action *a, int ovr, int bind)
{
	struct nlattr *tb[TCA_DEF_MAX + 1];
	struct tc_defact *parm;
	struct tcf_defact *d;
	struct tcf_common *pc;
	char *defdata;
	int ret = 0, err;

	if (nla == NULL)
		return -EINVAL;

	err = FUNC5(tb, TCA_DEF_MAX, nla, simple_policy);
	if (err < 0)
		return err;

	if (tb[TCA_DEF_PARMS] == NULL)
		return -EINVAL;

	if (tb[TCA_DEF_DATA] == NULL)
		return -EINVAL;

	parm = FUNC4(tb[TCA_DEF_PARMS]);
	defdata = FUNC4(tb[TCA_DEF_DATA]);

	pc = FUNC7(parm->index, a, bind, &simp_hash_info);
	if (!pc) {
		pc = FUNC8(parm->index, est, a, sizeof(*d), bind,
				     &simp_idx_gen, &simp_hash_info);
		if (FUNC0(pc))
		    return FUNC1(pc);

		d = FUNC11(pc);
		ret = FUNC2(d, defdata);
		if (ret < 0) {
			FUNC3(pc);
			return ret;
		}
		d->tcf_action = parm->action;
		ret = ACT_P_CREATED;
	} else {
		d = FUNC11(pc);
		if (!ovr) {
			FUNC10(d, bind);
			return -EEXIST;
		}
		FUNC6(d, defdata, parm);
	}

	if (ret == ACT_P_CREATED)
		FUNC9(pc, &simp_hash_info);
	return ret;
}