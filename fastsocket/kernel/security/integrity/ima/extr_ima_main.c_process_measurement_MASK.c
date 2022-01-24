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
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iint_free ; 
 int FUNC1 (struct ima_iint_cache*,struct file*) ; 
 struct ima_iint_cache* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  ima_initialized ; 
 int FUNC3 (struct ima_iint_cache*,struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ima_iint_cache*,struct file*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct file *file, const unsigned char *filename,
			       int mask, int function)
{
	struct inode *inode = file->f_dentry->d_inode;
	struct ima_iint_cache *iint;
	int rc;

	if (!ima_initialized || !FUNC0(inode->i_mode))
		return 0;
	iint = FUNC2(inode);
	if (!iint)
		return -ENOMEM;

	FUNC6(&iint->mutex);
	rc = FUNC3(iint, inode, mask, function);
	if (rc != 0)
		goto out;

	rc = FUNC1(iint, file);
	if (!rc)
		FUNC4(iint, file, filename);
out:
	FUNC7(&iint->mutex);
	FUNC5(&iint->refcount, iint_free);
	return rc;
}