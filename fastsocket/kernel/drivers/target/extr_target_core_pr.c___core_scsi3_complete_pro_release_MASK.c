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
struct t10_pr_registration {scalar_t__ pr_res_scope; scalar_t__ pr_res_type; scalar_t__ pr_res_holder; scalar_t__ pr_reg_all_tg_pt; } ;
struct se_node_acl {int /*<<< orphan*/  initiatorname; TYPE_1__* se_tpg; } ;
struct se_device {int /*<<< orphan*/ * dev_pr_res_holder; } ;
struct TYPE_2__ {struct target_core_fabric_ops* se_tpg_tfo; } ;

/* Variables and functions */
 int PR_REG_ISID_ID_LEN ; 
 int FUNC0 (struct t10_pr_registration*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(
	struct se_device *dev,
	struct se_node_acl *se_nacl,
	struct t10_pr_registration *pr_reg,
	int explict)
{
	struct target_core_fabric_ops *tfo = se_nacl->se_tpg->se_tpg_tfo;
	char i_buf[PR_REG_ISID_ID_LEN];
	int prf_isid;

	FUNC2(i_buf, 0, PR_REG_ISID_ID_LEN);
	prf_isid = FUNC0(pr_reg, &i_buf[0],
				PR_REG_ISID_ID_LEN);
	/*
	 * Go ahead and release the current PR reservation holder.
	 */
	dev->dev_pr_res_holder = NULL;

	FUNC3("SPC-3 PR [%s] Service Action: %s RELEASE cleared"
		" reservation holder TYPE: %s ALL_TG_PT: %d\n",
		tfo->get_fabric_name(), (explict) ? "explict" : "implict",
		FUNC1(pr_reg->pr_res_type),
		(pr_reg->pr_reg_all_tg_pt) ? 1 : 0);
	FUNC3("SPC-3 PR [%s] RELEASE Node: %s%s\n",
		tfo->get_fabric_name(), se_nacl->initiatorname,
		(prf_isid) ? &i_buf[0] : "");
	/*
	 * Clear TYPE and SCOPE for the next PROUT Service Action: RESERVE
	 */
	pr_reg->pr_res_holder = pr_reg->pr_res_type = pr_reg->pr_res_scope = 0;
}