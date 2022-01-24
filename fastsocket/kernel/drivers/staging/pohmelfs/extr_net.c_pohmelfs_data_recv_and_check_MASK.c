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
struct netfs_cmd {int /*<<< orphan*/  iv; } ;
struct netfs_state {int /*<<< orphan*/  eng; struct netfs_cmd cmd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (struct netfs_state*,void*,unsigned int) ; 

int FUNC2(struct netfs_state *st, void *data, unsigned int size)
{
	struct netfs_cmd *cmd = &st->cmd;
	int err;

	err = FUNC1(st, data, size);
	if (err)
		return err;

	return FUNC0(&st->eng, cmd->iv, data, NULL, size);
}