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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct ima_iint_cache {int /*<<< orphan*/  refcount; int /*<<< orphan*/  mutex; } ;
struct file {TYPE_1__* f_dentry; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iint_free ; 
 int /*<<< orphan*/  FUNC1 (struct ima_iint_cache*,struct inode*,struct file*) ; 
 int /*<<< orphan*/  ima_enabled ; 
 struct ima_iint_cache* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  ima_initialized ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct file *file)
{
	struct inode *inode = file->f_dentry->d_inode;
	struct ima_iint_cache *iint;

	if (!ima_enabled || !ima_initialized || !FUNC0(inode->i_mode))
		return;
	iint = FUNC2(inode);
	if (!iint)
		return;

	FUNC4(&iint->mutex);
	FUNC1(iint, inode, file);
	FUNC5(&iint->mutex);
	FUNC3(&iint->refcount, iint_free);
}