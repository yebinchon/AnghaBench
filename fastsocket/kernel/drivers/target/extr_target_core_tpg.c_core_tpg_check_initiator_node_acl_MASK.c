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
struct se_portal_group {TYPE_1__* se_tpg_tfo; int /*<<< orphan*/  acl_node_lock; int /*<<< orphan*/  num_node_acls; int /*<<< orphan*/  acl_node_list; } ;
struct se_node_acl {int dynamic_node_acl; int /*<<< orphan*/  queue_depth; int /*<<< orphan*/  acl_list; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  acl_index; struct se_portal_group* se_tpg; int /*<<< orphan*/  initiatorname; int /*<<< orphan*/  acl_pr_ref_count; int /*<<< orphan*/  nacl_sess_lock; int /*<<< orphan*/  device_list_lock; int /*<<< orphan*/  acl_free_comp; int /*<<< orphan*/  acl_kref; int /*<<< orphan*/  acl_sess_list; } ;
struct TYPE_2__ {int (* tpg_check_demo_mode_login_only ) (struct se_portal_group*) ;int /*<<< orphan*/  (* get_fabric_name ) () ;int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;int /*<<< orphan*/  (* tpg_release_fabric_acl ) (struct se_portal_group*,struct se_node_acl*) ;int /*<<< orphan*/  (* set_default_node_attributes ) (struct se_node_acl*) ;int /*<<< orphan*/  (* tpg_get_default_depth ) (struct se_portal_group*) ;struct se_node_acl* (* tpg_alloc_fabric_acl ) (struct se_portal_group*) ;int /*<<< orphan*/  (* tpg_check_demo_mode ) (struct se_portal_group*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCSI_AUTH_INTR_INDEX ; 
 int /*<<< orphan*/  TRANSPORT_IQN_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC3 (struct se_node_acl*,struct se_portal_group*) ; 
 scalar_t__ FUNC4 (struct se_portal_group*,struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC5 (struct se_node_acl*,struct se_portal_group*) ; 
 struct se_node_acl* FUNC6 (struct se_portal_group*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 struct se_node_acl* FUNC18 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC19 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC20 (struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC21 (struct se_portal_group*,struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC22 (struct se_portal_group*,struct se_node_acl*) ; 
 int FUNC23 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (struct se_portal_group*) ; 

struct se_node_acl *FUNC26(
	struct se_portal_group *tpg,
	unsigned char *initiatorname)
{
	struct se_node_acl *acl;

	acl = FUNC6(tpg, initiatorname);
	if (acl)
		return acl;

	if (!tpg->se_tpg_tfo->tpg_check_demo_mode(tpg))
		return NULL;

	acl =  tpg->se_tpg_tfo->tpg_alloc_fabric_acl(tpg);
	if (!acl)
		return NULL;

	FUNC0(&acl->acl_list);
	FUNC0(&acl->acl_sess_list);
	FUNC8(&acl->acl_kref);
	FUNC7(&acl->acl_free_comp);
	FUNC13(&acl->device_list_lock);
	FUNC13(&acl->nacl_sess_lock);
	FUNC1(&acl->acl_pr_ref_count, 0);
	acl->queue_depth = tpg->se_tpg_tfo->tpg_get_default_depth(tpg);
	FUNC12(acl->initiatorname, TRANSPORT_IQN_LEN, "%s", initiatorname);
	acl->se_tpg = tpg;
	acl->acl_index = FUNC11(SCSI_AUTH_INTR_INDEX);
	FUNC13(&acl->stats_lock);
	acl->dynamic_node_acl = 1;

	tpg->se_tpg_tfo->set_default_node_attributes(acl);

	if (FUNC2(acl) < 0) {
		tpg->se_tpg_tfo->tpg_release_fabric_acl(tpg, acl);
		return NULL;
	}

	if (FUNC4(tpg, acl) < 0) {
		FUNC3(acl, tpg);
		tpg->se_tpg_tfo->tpg_release_fabric_acl(tpg, acl);
		return NULL;
	}
	/*
	 * Here we only create demo-mode MappedLUNs from the active
	 * TPG LUNs if the fabric is not explicitly asking for
	 * tpg_check_demo_mode_login_only() == 1.
	 */
	if ((tpg->se_tpg_tfo->tpg_check_demo_mode_login_only == NULL) ||
	    (tpg->se_tpg_tfo->tpg_check_demo_mode_login_only(tpg) != 1))
		FUNC5(acl, tpg);

	FUNC14(&tpg->acl_node_lock);
	FUNC9(&acl->acl_list, &tpg->acl_node_list);
	tpg->num_node_acls++;
	FUNC15(&tpg->acl_node_lock);

	FUNC10("%s_TPG[%u] - Added DYNAMIC ACL with TCQ Depth: %d for %s"
		" Initiator Node: %s\n", tpg->se_tpg_tfo->get_fabric_name(),
		tpg->se_tpg_tfo->tpg_get_tag(tpg), acl->queue_depth,
		tpg->se_tpg_tfo->get_fabric_name(), initiatorname);

	return acl;
}