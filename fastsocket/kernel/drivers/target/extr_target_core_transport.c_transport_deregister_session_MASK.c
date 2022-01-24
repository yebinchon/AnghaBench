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
struct target_core_fabric_ops {int /*<<< orphan*/  (* get_fabric_name ) () ;int /*<<< orphan*/  (* tpg_release_fabric_acl ) (struct se_portal_group*,struct se_node_acl*) ;int /*<<< orphan*/  (* tpg_check_demo_mode_cache ) (struct se_portal_group*) ;} ;
struct se_session {struct se_node_acl* se_node_acl; int /*<<< orphan*/ * fabric_sess_ptr; struct se_portal_group* se_tpg; int /*<<< orphan*/  sess_list; } ;
struct se_portal_group {struct target_core_fabric_ops* se_tpg_tfo; int /*<<< orphan*/  acl_node_lock; int /*<<< orphan*/  num_node_acls; int /*<<< orphan*/  session_lock; } ;
struct se_node_acl {int /*<<< orphan*/  acl_list; scalar_t__ dynamic_node_acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_node_acl*,struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC7 (struct se_portal_group*,struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC10 (struct se_session*) ; 

void FUNC11(struct se_session *se_sess)
{
	struct se_portal_group *se_tpg = se_sess->se_tpg;
	struct target_core_fabric_ops *se_tfo;
	struct se_node_acl *se_nacl;
	unsigned long flags;
	bool comp_nacl = true;

	if (!se_tpg) {
		FUNC10(se_sess);
		return;
	}
	se_tfo = se_tpg->se_tpg_tfo;

	FUNC4(&se_tpg->session_lock, flags);
	FUNC2(&se_sess->sess_list);
	se_sess->se_tpg = NULL;
	se_sess->fabric_sess_ptr = NULL;
	FUNC5(&se_tpg->session_lock, flags);

	/*
	 * Determine if we need to do extra work for this initiator node's
	 * struct se_node_acl if it had been previously dynamically generated.
	 */
	se_nacl = se_sess->se_node_acl;

	FUNC4(&se_tpg->acl_node_lock, flags);
	if (se_nacl && se_nacl->dynamic_node_acl) {
		if (!se_tfo->tpg_check_demo_mode_cache(se_tpg)) {
			FUNC2(&se_nacl->acl_list);
			se_tpg->num_node_acls--;
			FUNC5(&se_tpg->acl_node_lock, flags);
			FUNC1(se_nacl);
			FUNC0(se_nacl, se_tpg);
			se_tfo->tpg_release_fabric_acl(se_tpg, se_nacl);

			comp_nacl = false;
			FUNC4(&se_tpg->acl_node_lock, flags);
		}
	}
	FUNC5(&se_tpg->acl_node_lock, flags);

	FUNC3("TARGET_CORE[%s]: Deregistered fabric_sess\n",
		se_tpg->se_tpg_tfo->get_fabric_name());
	/*
	 * If last kref is dropping now for an explict NodeACL, awake sleeping
	 * ->acl_free_comp caller to wakeup configfs se_node_acl->acl_group
	 * removal context.
	 */
	if (se_nacl && comp_nacl == true)
		FUNC9(se_nacl);

	FUNC10(se_sess);
}