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
struct pohmelfs_sb {int flags; int /*<<< orphan*/  wait_on_page_timeout; int /*<<< orphan*/  wait; } ;
struct netfs_trans {int dummy; } ;
struct netfs_cmd {scalar_t__ csize; scalar_t__ ext; scalar_t__ start; scalar_t__ size; int /*<<< orphan*/  id; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  NETFS_CAPABILITIES ; 
 int /*<<< orphan*/  POHMELFS_ROOT_CAPABILITIES ; 
 int /*<<< orphan*/  FUNC0 (struct netfs_cmd*) ; 
 struct netfs_trans* FUNC1 (struct pohmelfs_sb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netfs_cmd* FUNC2 (struct netfs_trans*) ; 
 int FUNC3 (struct netfs_trans*,struct pohmelfs_sb*) ; 
 int /*<<< orphan*/  FUNC4 (struct netfs_cmd*,struct netfs_trans*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pohmelfs_sb *psb)
{
	struct netfs_trans *t;
	struct netfs_cmd *cmd;
	int err = -ENOMEM;

	t = FUNC1(psb, 0, 0, 0);
	if (!t)
		goto err_out_exit;

	cmd = FUNC2(t);

	cmd->cmd = NETFS_CAPABILITIES;
	cmd->id = POHMELFS_ROOT_CAPABILITIES;
	cmd->size = 0;
	cmd->start = 0;
	cmd->ext = 0;
	cmd->csize = 0;

	FUNC0(cmd);
	FUNC4(cmd, t, 0);

	err = FUNC3(t, psb);
	if (err)
		goto err_out_exit;

	psb->flags = ~0;
	err = FUNC5(psb->wait,
			(psb->flags != ~0),
			psb->wait_on_page_timeout);
	if (!err)
		err = -ETIMEDOUT;
	else if (err > 0)
		err = -psb->flags;

	if (err)
		goto err_out_exit;

	return 0;

err_out_exit:
	return err;
}