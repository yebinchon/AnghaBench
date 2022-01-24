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
struct rpc_task {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 

__attribute__((used)) static int
FUNC2(struct rpc_task *task, struct inode *old_dir,
		     struct inode *new_dir)
{
	if (FUNC0(task))
		return 0;
	FUNC1(old_dir);
	FUNC1(new_dir);
	return 1;
}