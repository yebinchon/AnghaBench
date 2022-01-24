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
struct task_struct {int dummy; } ;
struct path {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct task_struct*,struct path*,int) ; 
 struct task_struct* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct path *path)
{
	struct task_struct *task = FUNC1(inode);
	int result = -ENOENT;

	if (task) {
		result = FUNC0(task, path, 1);
		FUNC2(task);
	}
	return result;
}