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
struct se_session {int /*<<< orphan*/  sess_cmd_lock; } ;
struct se_cmd {int /*<<< orphan*/  cmd_kref; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  target_release_cmd_kref ; 

int FUNC1(struct se_session *se_sess, struct se_cmd *se_cmd)
{
	return FUNC0(&se_cmd->cmd_kref, target_release_cmd_kref,
			&se_sess->sess_cmd_lock);
}