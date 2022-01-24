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
struct tcf_mirred {int tcfm_ok_push; int /*<<< orphan*/  tcfm_list; int /*<<< orphan*/  tcf_lock; struct net_device* tcfm_dev; scalar_t__ tcfm_ifindex; int /*<<< orphan*/  tcfm_eaction; int /*<<< orphan*/  tcf_action; } ;
struct tcf_common {int dummy; } ;
struct tc_mirred {scalar_t__ ifindex; int /*<<< orphan*/  eaction; int /*<<< orphan*/  action; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int type; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
#define  ARPHRD_IPGRE 133 
#define  ARPHRD_NONE 132 
#define  ARPHRD_SIT 131 
#define  ARPHRD_TUNNEL 130 
#define  ARPHRD_TUNNEL6 129 
#define  ARPHRD_VOID 128 
 int EEXIST ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct tcf_common*) ; 
 int FUNC1 (struct tcf_common*) ; 
 int /*<<< orphan*/  TCA_MIRRED_MAX ; 
 size_t TCA_MIRRED_PARMS ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mirred_hash_info ; 
 int /*<<< orphan*/  mirred_idx_gen ; 
 int /*<<< orphan*/  mirred_list ; 
 int /*<<< orphan*/  mirred_policy ; 
 struct tc_mirred* FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct tcf_common* FUNC10 (int /*<<< orphan*/ ,struct tc_action*,int,int /*<<< orphan*/ *) ; 
 struct tcf_common* FUNC11 (int /*<<< orphan*/ ,struct nlattr*,struct tc_action*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct tcf_common*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_mirred*,int) ; 
 struct tcf_mirred* FUNC14 (struct tcf_common*) ; 

__attribute__((used)) static int FUNC15(struct nlattr *nla, struct nlattr *est,
			   struct tc_action *a, int ovr, int bind)
{
	struct nlattr *tb[TCA_MIRRED_MAX + 1];
	struct tc_mirred *parm;
	struct tcf_mirred *m;
	struct tcf_common *pc;
	struct net_device *dev = NULL;
	int ret = 0, err;
	int ok_push = 0;

	if (nla == NULL)
		return -EINVAL;

	err = FUNC7(tb, TCA_MIRRED_MAX, nla, mirred_policy);
	if (err < 0)
		return err;

	if (tb[TCA_MIRRED_PARMS] == NULL)
		return -EINVAL;
	parm = FUNC6(tb[TCA_MIRRED_PARMS]);

	if (parm->ifindex) {
		dev = FUNC2(&init_net, parm->ifindex);
		if (dev == NULL)
			return -ENODEV;
		switch (dev->type) {
			case ARPHRD_TUNNEL:
			case ARPHRD_TUNNEL6:
			case ARPHRD_SIT:
			case ARPHRD_IPGRE:
			case ARPHRD_VOID:
			case ARPHRD_NONE:
				ok_push = 0;
				break;
			default:
				ok_push = 1;
				break;
		}
	}

	pc = FUNC10(parm->index, a, bind, &mirred_hash_info);
	if (!pc) {
		if (!parm->ifindex)
			return -EINVAL;
		pc = FUNC11(parm->index, est, a, sizeof(*m), bind,
				     &mirred_idx_gen, &mirred_hash_info);
		if (FUNC0(pc))
		    return FUNC1(pc);
		ret = ACT_P_CREATED;
	} else {
		if (!ovr) {
			FUNC13(FUNC14(pc), bind);
			return -EEXIST;
		}
	}
	m = FUNC14(pc);

	FUNC8(&m->tcf_lock);
	m->tcf_action = parm->action;
	m->tcfm_eaction = parm->eaction;
	if (parm->ifindex) {
		m->tcfm_ifindex = parm->ifindex;
		if (ret != ACT_P_CREATED)
			FUNC4(m->tcfm_dev);
		m->tcfm_dev = dev;
		FUNC3(dev);
		m->tcfm_ok_push = ok_push;
	}
	FUNC9(&m->tcf_lock);
	if (ret == ACT_P_CREATED) {
		FUNC5(&m->tcfm_list, &mirred_list);
		FUNC12(pc, &mirred_hash_info);
	}

	return ret;
}