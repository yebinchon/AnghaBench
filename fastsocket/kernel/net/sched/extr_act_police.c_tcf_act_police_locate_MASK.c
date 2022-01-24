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
struct tcf_police {int tcf_bindcnt; int tcf_refcnt; int tcfp_mtu; int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  common; int /*<<< orphan*/ * tcf_next; scalar_t__ tcf_index; int /*<<< orphan*/  tcfp_t_c; void* tcfp_ewma_rate; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcfp_ptoks; struct qdisc_rate_table* tcfp_P_tab; struct qdisc_rate_table* tcfp_R_tab; int /*<<< orphan*/  tcfp_burst; int /*<<< orphan*/  tcfp_toks; void* tcfp_result; int /*<<< orphan*/  tcf_rate_est; int /*<<< orphan*/  tcf_bstats; } ;
struct tcf_common {int tcf_bindcnt; int tcf_refcnt; int tcfp_mtu; int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  common; int /*<<< orphan*/ * tcf_next; scalar_t__ tcf_index; int /*<<< orphan*/  tcfp_t_c; void* tcfp_ewma_rate; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcfp_ptoks; struct qdisc_rate_table* tcfp_P_tab; struct qdisc_rate_table* tcfp_R_tab; int /*<<< orphan*/  tcfp_burst; int /*<<< orphan*/  tcfp_toks; void* tcfp_result; int /*<<< orphan*/  tcf_rate_est; int /*<<< orphan*/  tcf_bstats; } ;
struct tc_police_compat {int dummy; } ;
struct TYPE_4__ {scalar_t__ rate; } ;
struct tc_police {int mtu; scalar_t__ index; int /*<<< orphan*/  action; int /*<<< orphan*/  burst; TYPE_2__ peakrate; TYPE_2__ rate; } ;
struct tc_action {struct tcf_police* priv; } ;
struct TYPE_3__ {int cell_log; } ;
struct qdisc_rate_table {TYPE_1__ rate; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct tcf_police*,int) ; 
 int /*<<< orphan*/  POL_TAB_MASK ; 
 size_t TCA_POLICE_AVRATE ; 
 int /*<<< orphan*/  TCA_POLICE_MAX ; 
 size_t TCA_POLICE_PEAKRATE ; 
 size_t TCA_POLICE_RATE ; 
 size_t TCA_POLICE_RESULT ; 
 size_t TCA_POLICE_TBF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_police*) ; 
 struct tcf_police* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct tc_police* FUNC5 (struct nlattr*) ; 
 void* FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  police_hash_info ; 
 int /*<<< orphan*/  police_idx_gen ; 
 int /*<<< orphan*/  police_lock ; 
 int /*<<< orphan*/  police_policy ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct qdisc_rate_table* FUNC10 (TYPE_2__*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct qdisc_rate_table*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct tcf_police* FUNC16 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** tcf_police_ht ; 
 struct tcf_police* FUNC18 (struct tcf_police*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct nlattr *nla, struct nlattr *est,
				 struct tc_action *a, int ovr, int bind)
{
	unsigned h;
	int ret = 0, err;
	struct nlattr *tb[TCA_POLICE_MAX + 1];
	struct tc_police *parm;
	struct tcf_police *police;
	struct qdisc_rate_table *R_tab = NULL, *P_tab = NULL;
	int size;

	if (nla == NULL)
		return -EINVAL;

	err = FUNC8(tb, TCA_POLICE_MAX, nla, police_policy);
	if (err < 0)
		return err;

	if (tb[TCA_POLICE_TBF] == NULL)
		return -EINVAL;
	size = FUNC7(tb[TCA_POLICE_TBF]);
	if (size != sizeof(*parm) && size != sizeof(struct tc_police_compat))
		return -EINVAL;
	parm = FUNC5(tb[TCA_POLICE_TBF]);

	if (parm->index) {
		struct tcf_common *pc;

		pc = FUNC16(parm->index, &police_hash_info);
		if (pc != NULL) {
			a->priv = pc;
			police = FUNC18(pc);
			if (bind) {
				police->tcf_bindcnt += 1;
				police->tcf_refcnt += 1;
			}
			if (ovr)
				goto override;
			return ret;
		}
	}

	police = FUNC4(sizeof(*police), GFP_KERNEL);
	if (police == NULL)
		return -ENOMEM;
	ret = ACT_P_CREATED;
	police->tcf_refcnt = 1;
	FUNC13(&police->tcf_lock);
	if (bind)
		police->tcf_bindcnt = 1;
override:
	if (parm->rate.rate) {
		err = -ENOMEM;
		R_tab = FUNC10(&parm->rate, tb[TCA_POLICE_RATE]);
		if (R_tab == NULL)
			goto failure;

		if (parm->peakrate.rate) {
			P_tab = FUNC10(&parm->peakrate,
					       tb[TCA_POLICE_PEAKRATE]);
			if (P_tab == NULL)
				goto failure;
		}
	}

	FUNC12(&police->tcf_lock);
	if (est) {
		err = FUNC2(&police->tcf_bstats,
					    &police->tcf_rate_est,
					    &police->tcf_lock, est);
		if (err)
			goto failure_unlock;
	} else if (tb[TCA_POLICE_AVRATE] &&
		   (ret == ACT_P_CREATED ||
		    !FUNC1(&police->tcf_bstats,
					  &police->tcf_rate_est))) {
		err = -EINVAL;
		goto failure_unlock;
	}

	/* No failure allowed after this point */
	if (R_tab != NULL) {
		FUNC11(police->tcfp_R_tab);
		police->tcfp_R_tab = R_tab;
	}
	if (P_tab != NULL) {
		FUNC11(police->tcfp_P_tab);
		police->tcfp_P_tab = P_tab;
	}

	if (tb[TCA_POLICE_RESULT])
		police->tcfp_result = FUNC6(tb[TCA_POLICE_RESULT]);
	police->tcfp_toks = police->tcfp_burst = parm->burst;
	police->tcfp_mtu = parm->mtu;
	if (police->tcfp_mtu == 0) {
		police->tcfp_mtu = ~0;
		if (police->tcfp_R_tab)
			police->tcfp_mtu = 255<<police->tcfp_R_tab->rate.cell_log;
	}
	if (police->tcfp_P_tab)
		police->tcfp_ptoks = FUNC0(police, police->tcfp_mtu);
	police->tcf_action = parm->action;

	if (tb[TCA_POLICE_AVRATE])
		police->tcfp_ewma_rate = FUNC6(tb[TCA_POLICE_AVRATE]);

	FUNC14(&police->tcf_lock);
	if (ret != ACT_P_CREATED)
		return ret;

	police->tcfp_t_c = FUNC9();
	police->tcf_index = parm->index ? parm->index :
		FUNC17(&police_idx_gen, &police_hash_info);
	h = FUNC15(police->tcf_index, POL_TAB_MASK);
	FUNC19(&police_lock);
	police->tcf_next = tcf_police_ht[h];
	tcf_police_ht[h] = &police->common;
	FUNC20(&police_lock);

	a->priv = police;
	return ret;

failure_unlock:
	FUNC14(&police->tcf_lock);
failure:
	if (P_tab)
		FUNC11(P_tab);
	if (R_tab)
		FUNC11(R_tab);
	if (ret == ACT_P_CREATED)
		FUNC3(police);
	return err;
}