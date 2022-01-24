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
struct se_cmd {int t_data_nents; int /*<<< orphan*/ * t_data_vmap; int /*<<< orphan*/  t_data_sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct se_cmd *cmd)
{
	if (!cmd->t_data_nents) {
		return;
	} else if (cmd->t_data_nents == 1) {
		FUNC0(FUNC1(cmd->t_data_sg));
		return;
	}

	FUNC2(cmd->t_data_vmap);
	cmd->t_data_vmap = NULL;
}