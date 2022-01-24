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
struct se_session {void* fabric_sess_ptr; int /*<<< orphan*/  sess_list; int /*<<< orphan*/  sess_acl_list; int /*<<< orphan*/  sess_bin_isid; struct se_portal_group* se_tpg; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; int /*<<< orphan*/  tpg_sess_list; } ;
struct se_node_acl {int /*<<< orphan*/  nacl_sess_lock; int /*<<< orphan*/  acl_sess_list; struct se_session* nacl_sess; int /*<<< orphan*/  acl_kref; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_fabric_name ) () ;int /*<<< orphan*/  (* sess_get_initiator_sid ) (struct se_session*,unsigned char*,int) ;} ;

/* Variables and functions */
 int PR_REG_ISID_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct se_session*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(
	struct se_portal_group *se_tpg,
	struct se_node_acl *se_nacl,
	struct se_session *se_sess,
	void *fabric_sess_ptr)
{
	unsigned char buf[PR_REG_ISID_LEN];

	se_sess->se_tpg = se_tpg;
	se_sess->fabric_sess_ptr = fabric_sess_ptr;
	/*
	 * Used by struct se_node_acl's under ConfigFS to locate active se_session-t
	 *
	 * Only set for struct se_session's that will actually be moving I/O.
	 * eg: *NOT* discovery sessions.
	 */
	if (se_nacl) {
		/*
		 * If the fabric module supports an ISID based TransportID,
		 * save this value in binary from the fabric I_T Nexus now.
		 */
		if (se_tpg->se_tpg_tfo->sess_get_initiator_sid != NULL) {
			FUNC3(&buf[0], 0, PR_REG_ISID_LEN);
			se_tpg->se_tpg_tfo->sess_get_initiator_sid(se_sess,
					&buf[0], PR_REG_ISID_LEN);
			se_sess->sess_bin_isid = FUNC0(&buf[0]);
		}
		FUNC1(&se_nacl->acl_kref);

		FUNC5(&se_nacl->nacl_sess_lock);
		/*
		 * The se_nacl->nacl_sess pointer will be set to the
		 * last active I_T Nexus for each struct se_node_acl.
		 */
		se_nacl->nacl_sess = se_sess;

		FUNC2(&se_sess->sess_acl_list,
			      &se_nacl->acl_sess_list);
		FUNC6(&se_nacl->nacl_sess_lock);
	}
	FUNC2(&se_sess->sess_list, &se_tpg->tpg_sess_list);

	FUNC4("TARGET_CORE[%s]: Registered fabric_sess_ptr: %p\n",
		se_tpg->se_tpg_tfo->get_fabric_name(), se_sess->fabric_sess_ptr);
}