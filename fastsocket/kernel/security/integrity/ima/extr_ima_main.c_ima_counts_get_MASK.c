#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; } ;
struct ima_iint_cache {int /*<<< orphan*/  refcount; int /*<<< orphan*/  mutex; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_CHECK ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  MAY_READ ; 
 int /*<<< orphan*/  OPEN_WRITERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOMTOU ; 
 int /*<<< orphan*/  iint_free ; 
 int /*<<< orphan*/  ima_enabled ; 
 struct ima_iint_cache* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ima_iint_cache*,int) ; 
 int /*<<< orphan*/  ima_initialized ; 
 int FUNC3 (struct ima_iint_cache*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ima_iint_cache*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct file *file)
{
	struct dentry *dentry = file->f_path.dentry;
	struct inode *inode = dentry->d_inode;
	fmode_t mode = file->f_mode;
	struct ima_iint_cache *iint;
	int rc;

	if (!ima_enabled || !ima_initialized || !FUNC0(inode->i_mode))
		return;
	iint = FUNC1(inode);
	if (!iint)
		return;
	FUNC6(&iint->mutex);
	rc = FUNC3(iint, inode, MAY_READ, FILE_CHECK);
	if (rc < 0)
		goto out;

	if (mode & FMODE_WRITE) {
		FUNC4(TOMTOU, iint, inode, dentry->d_name.name);
		goto out;
	}
	FUNC4(OPEN_WRITERS, iint, inode, dentry->d_name.name);
out:
	FUNC2(iint, file->f_mode);
	FUNC7(&iint->mutex);

	FUNC5(&iint->refcount, iint_free);
}