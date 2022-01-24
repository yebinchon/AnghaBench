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
typedef  size_t u32 ;
struct target_core_fabric_ops {char* (* tpg_get_wwn ) (struct se_portal_group*) ;int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;int /*<<< orphan*/  (* get_fabric_name ) () ;} ;
struct se_wwn {int dummy; } ;
struct se_portal_group {int se_tpg_type; int /*<<< orphan*/  se_tpg_node; struct se_lun** tpg_lun_list; int /*<<< orphan*/  tpg_lun_lock; int /*<<< orphan*/  session_lock; int /*<<< orphan*/  acl_node_lock; int /*<<< orphan*/  tpg_sess_list; int /*<<< orphan*/  acl_node_list; int /*<<< orphan*/  tpg_pr_ref_count; struct se_wwn* se_tpg_wwn; struct target_core_fabric_ops* se_tpg_tfo; void* se_tpg_fabric_ptr; } ;
struct se_lun {size_t unpacked_lun; int /*<<< orphan*/  lun_sep_lock; int /*<<< orphan*/  lun_cmd_lock; int /*<<< orphan*/  lun_acl_lock; int /*<<< orphan*/  lun_cmd_list; int /*<<< orphan*/  lun_acl_list; int /*<<< orphan*/  lun_shutdown_comp; int /*<<< orphan*/  lun_acl_count; int /*<<< orphan*/  lun_status; int /*<<< orphan*/  lun_link_magic; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SE_LUN_LINK_MAGIC ; 
 int /*<<< orphan*/  TRANSPORT_LUN_STATUS_FREE ; 
 size_t TRANSPORT_MAX_LUNS_PER_TPG ; 
 int TRANSPORT_TPG_TYPE_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (struct se_lun**,size_t) ; 
 struct se_lun** FUNC2 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 char* FUNC13 (struct se_portal_group*) ; 
 char* FUNC14 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC15 (struct se_portal_group*) ; 
 int /*<<< orphan*/  tpg_list ; 
 int /*<<< orphan*/  tpg_lock ; 

int FUNC16(
	struct target_core_fabric_ops *tfo,
	struct se_wwn *se_wwn,
	struct se_portal_group *se_tpg,
	void *tpg_fabric_ptr,
	int se_tpg_type)
{
	struct se_lun *lun;
	u32 i;

	se_tpg->tpg_lun_list = FUNC2(TRANSPORT_MAX_LUNS_PER_TPG,
			sizeof(struct se_lun), GFP_KERNEL);
	if (!se_tpg->tpg_lun_list) {
		FUNC8("Unable to allocate struct se_portal_group->"
				"tpg_lun_list\n");
		return -ENOMEM;
	}

	for (i = 0; i < TRANSPORT_MAX_LUNS_PER_TPG; i++) {
		lun = se_tpg->tpg_lun_list[i];
		lun->unpacked_lun = i;
		lun->lun_link_magic = SE_LUN_LINK_MAGIC;
		lun->lun_status = TRANSPORT_LUN_STATUS_FREE;
		FUNC3(&lun->lun_acl_count, 0);
		FUNC5(&lun->lun_shutdown_comp);
		FUNC0(&lun->lun_acl_list);
		FUNC0(&lun->lun_cmd_list);
		FUNC10(&lun->lun_acl_lock);
		FUNC10(&lun->lun_cmd_lock);
		FUNC10(&lun->lun_sep_lock);
	}

	se_tpg->se_tpg_type = se_tpg_type;
	se_tpg->se_tpg_fabric_ptr = tpg_fabric_ptr;
	se_tpg->se_tpg_tfo = tfo;
	se_tpg->se_tpg_wwn = se_wwn;
	FUNC3(&se_tpg->tpg_pr_ref_count, 0);
	FUNC0(&se_tpg->acl_node_list);
	FUNC0(&se_tpg->se_tpg_node);
	FUNC0(&se_tpg->tpg_sess_list);
	FUNC10(&se_tpg->acl_node_lock);
	FUNC10(&se_tpg->session_lock);
	FUNC10(&se_tpg->tpg_lun_lock);

	if (se_tpg->se_tpg_type == TRANSPORT_TPG_TYPE_NORMAL) {
		if (FUNC4(se_tpg) < 0) {
			FUNC1(se_tpg->tpg_lun_list,
				   TRANSPORT_MAX_LUNS_PER_TPG);
			return -ENOMEM;
		}
	}

	FUNC9(&tpg_lock);
	FUNC6(&se_tpg->se_tpg_node, &tpg_list);
	FUNC11(&tpg_lock);

	FUNC7("TARGET_CORE[%s]: Allocated %s struct se_portal_group for"
		" endpoint: %s, Portal Tag: %u\n", tfo->get_fabric_name(),
		(se_tpg->se_tpg_type == TRANSPORT_TPG_TYPE_NORMAL) ?
		"Normal" : "Discovery", (tfo->tpg_get_wwn(se_tpg) == NULL) ?
		"None" : tfo->tpg_get_wwn(se_tpg), tfo->tpg_get_tag(se_tpg));

	return 0;
}