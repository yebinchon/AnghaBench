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
struct target_core_fabric_ops {int /*<<< orphan*/  (* get_fabric_name ) () ;} ;
struct t10_pr_registration {int pr_res_holder; int pr_res_type; int pr_res_scope; int /*<<< orphan*/  pr_reg_abort_list; scalar_t__ pr_reg_all_tg_pt; struct se_node_acl* pr_reg_nacl; } ;
struct se_node_acl {int /*<<< orphan*/  initiatorname; TYPE_1__* se_tpg; } ;
struct se_device {struct t10_pr_registration* dev_pr_res_holder; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct target_core_fabric_ops* se_tpg_tfo; } ;

/* Variables and functions */
 int PR_REG_ISID_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct se_device*,struct se_node_acl*,struct t10_pr_registration*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct t10_pr_registration*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(
	struct se_device *dev,
	struct t10_pr_registration *pr_reg,
	struct list_head *preempt_and_abort_list,
	int type,
	int scope,
	int abort)
{
	struct se_node_acl *nacl = pr_reg->pr_reg_nacl;
	struct target_core_fabric_ops *tfo = nacl->se_tpg->se_tpg_tfo;
	char i_buf[PR_REG_ISID_ID_LEN];
	int prf_isid;

	FUNC4(i_buf, 0, PR_REG_ISID_ID_LEN);
	prf_isid = FUNC1(pr_reg, &i_buf[0],
				PR_REG_ISID_ID_LEN);
	/*
	 * Do an implict RELEASE of the existing reservation.
	 */
	if (dev->dev_pr_res_holder)
		FUNC0(dev, nacl,
				dev->dev_pr_res_holder, 0);

	dev->dev_pr_res_holder = pr_reg;
	pr_reg->pr_res_holder = 1;
	pr_reg->pr_res_type = type;
	pr_reg->pr_res_scope = scope;

	FUNC5("SPC-3 PR [%s] Service Action: PREEMPT%s created new"
		" reservation holder TYPE: %s ALL_TG_PT: %d\n",
		tfo->get_fabric_name(), (abort) ? "_AND_ABORT" : "",
		FUNC2(type),
		(pr_reg->pr_reg_all_tg_pt) ? 1 : 0);
	FUNC5("SPC-3 PR [%s] PREEMPT%s from Node: %s%s\n",
		tfo->get_fabric_name(), (abort) ? "_AND_ABORT" : "",
		nacl->initiatorname, (prf_isid) ? &i_buf[0] : "");
	/*
	 * For PREEMPT_AND_ABORT, add the preempting reservation's
	 * struct t10_pr_registration to the list that will be compared
	 * against received CDBs..
	 */
	if (preempt_and_abort_list)
		FUNC3(&pr_reg->pr_reg_abort_list,
				preempt_and_abort_list);
}