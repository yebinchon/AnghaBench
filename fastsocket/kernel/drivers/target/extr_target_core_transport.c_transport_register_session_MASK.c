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
struct se_session {int dummy; } ;
struct se_portal_group {int /*<<< orphan*/  session_lock; } ;
struct se_node_acl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_portal_group*,struct se_node_acl*,struct se_session*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(
	struct se_portal_group *se_tpg,
	struct se_node_acl *se_nacl,
	struct se_session *se_sess,
	void *fabric_sess_ptr)
{
	unsigned long flags;

	FUNC1(&se_tpg->session_lock, flags);
	FUNC0(se_tpg, se_nacl, se_sess, fabric_sess_ptr);
	FUNC2(&se_tpg->session_lock, flags);
}