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
struct pohmelfs_sb {int dummy; } ;
struct TYPE_2__ {struct netfs_cmd* iov_base; } ;
struct netfs_trans {int result; TYPE_1__ iovec; } ;
struct netfs_cmd {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct netfs_cmd*) ; 
 int FUNC2 (struct netfs_trans*,struct pohmelfs_sb*) ; 
 int /*<<< orphan*/  FUNC3 (struct netfs_trans*) ; 

__attribute__((used)) static int FUNC4(struct netfs_trans *t, struct pohmelfs_sb *psb, int err)
{
	struct netfs_cmd *cmd = t->iovec.iov_base;
	FUNC1(cmd);

	if (FUNC0(!err))
		err = FUNC2(t, psb);

	t->result = err;
	FUNC3(t);

	return err;
}