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
struct t10_pr_registration {struct se_node_acl* pr_reg_nacl; } ;
struct se_node_acl {char* initiatorname; TYPE_2__* se_tpg; } ;
struct se_device {struct t10_pr_registration* dev_pr_res_holder; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {TYPE_1__* se_tpg_tfo; } ;
struct TYPE_3__ {char* (* get_fabric_name ) () ;} ;

/* Variables and functions */
 int PR_REG_ISID_ID_LEN ; 
 int FUNC0 (struct t10_pr_registration*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 char* FUNC3 () ; 
 char* FUNC4 () ; 

__attribute__((used)) static ssize_t FUNC5(struct se_device *dev,
		char *page)
{
	struct se_node_acl *se_nacl;
	struct t10_pr_registration *pr_reg;
	char i_buf[PR_REG_ISID_ID_LEN];
	int prf_isid;

	FUNC1(i_buf, 0, PR_REG_ISID_ID_LEN);

	pr_reg = dev->dev_pr_res_holder;
	if (!pr_reg)
		return FUNC2(page, "No SPC-3 Reservation holder\n");

	se_nacl = pr_reg->pr_reg_nacl;
	prf_isid = FUNC0(pr_reg, &i_buf[0],
				PR_REG_ISID_ID_LEN);

	return FUNC2(page, "SPC-3 Reservation: %s Initiator: %s%s\n",
		se_nacl->se_tpg->se_tpg_tfo->get_fabric_name(),
		se_nacl->initiatorname, (prf_isid) ? &i_buf[0] : "");
}