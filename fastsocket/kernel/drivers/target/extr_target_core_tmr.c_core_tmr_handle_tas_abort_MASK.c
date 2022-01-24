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
struct se_node_acl {int dummy; } ;
struct se_cmd {TYPE_1__* se_sess; } ;
struct TYPE_2__ {struct se_node_acl* se_node_acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct se_cmd*) ; 

__attribute__((used)) static void FUNC2(
	struct se_node_acl *tmr_nacl,
	struct se_cmd *cmd,
	int tas,
	int fe_count)
{
	if (!fe_count) {
		FUNC0(cmd, 1);
		return;
	}
	/*
	 * TASK ABORTED status (TAS) bit support
	*/
	if ((tmr_nacl &&
	     (tmr_nacl == cmd->se_sess->se_node_acl)) || tas)
		FUNC1(cmd);

	FUNC0(cmd, 0);
}