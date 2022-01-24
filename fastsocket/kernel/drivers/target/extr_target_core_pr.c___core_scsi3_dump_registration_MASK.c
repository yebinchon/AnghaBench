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
struct target_core_fabric_ops {int /*<<< orphan*/  (* get_fabric_name ) () ;int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;int /*<<< orphan*/  (* tpg_get_wwn ) (struct se_portal_group*) ;} ;
struct t10_pr_registration {char* pr_res_key; char* pr_reg_aptpl; int /*<<< orphan*/  pr_res_generation; scalar_t__ pr_reg_all_tg_pt; } ;
struct se_portal_group {int dummy; } ;
struct se_node_acl {int /*<<< orphan*/  initiatorname; struct se_portal_group* se_tpg; } ;
struct se_device {TYPE_1__* transport; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int PR_REG_ISID_ID_LEN ; 
 int FUNC0 (struct t10_pr_registration*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(
	struct target_core_fabric_ops *tfo,
	struct se_device *dev,
	struct se_node_acl *nacl,
	struct t10_pr_registration *pr_reg,
	int register_type)
{
	struct se_portal_group *se_tpg = nacl->se_tpg;
	char i_buf[PR_REG_ISID_ID_LEN];
	int prf_isid;

	FUNC1(&i_buf[0], 0, PR_REG_ISID_ID_LEN);
	prf_isid = FUNC0(pr_reg, &i_buf[0],
				PR_REG_ISID_ID_LEN);

	FUNC2("SPC-3 PR [%s] Service Action: REGISTER%s Initiator"
		" Node: %s%s\n", tfo->get_fabric_name(), (register_type == 2) ?
		"_AND_MOVE" : (register_type == 1) ?
		"_AND_IGNORE_EXISTING_KEY" : "", nacl->initiatorname,
		(prf_isid) ? i_buf : "");
	FUNC2("SPC-3 PR [%s] registration on Target Port: %s,0x%04x\n",
		 tfo->get_fabric_name(), tfo->tpg_get_wwn(se_tpg),
		tfo->tpg_get_tag(se_tpg));
	FUNC2("SPC-3 PR [%s] for %s TCM Subsystem %s Object Target"
		" Port(s)\n",  tfo->get_fabric_name(),
		(pr_reg->pr_reg_all_tg_pt) ? "ALL" : "SINGLE",
		dev->transport->name);
	FUNC2("SPC-3 PR [%s] SA Res Key: 0x%016Lx PRgeneration:"
		" 0x%08x  APTPL: %d\n", tfo->get_fabric_name(),
		pr_reg->pr_res_key, pr_reg->pr_res_generation,
		pr_reg->pr_reg_aptpl);
}