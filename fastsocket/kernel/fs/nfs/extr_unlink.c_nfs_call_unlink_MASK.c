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
struct nfs_unlinkdata {int /*<<< orphan*/  list; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  silly_list; int /*<<< orphan*/  silly_count; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dentry*,struct inode*,struct nfs_unlinkdata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dentry *dentry, struct nfs_unlinkdata *data)
{
	struct dentry *parent;
	struct inode *dir;
	int ret = 0;


	parent = FUNC2(dentry);
	if (parent == NULL)
		goto out_free;
	dir = parent->d_inode;
	/* Non-exclusive lock protects against concurrent lookup() calls */
	FUNC6(&dir->i_lock);
	if (FUNC1(&FUNC0(dir)->silly_count) == 0) {
		/* Deferred delete */
		FUNC4(&data->list, &FUNC0(dir)->silly_list);
		FUNC7(&dir->i_lock);
		ret = 1;
		goto out_dput;
	}
	FUNC7(&dir->i_lock);
	ret = FUNC5(parent, dir, data);
out_dput:
	FUNC3(parent);
out_free:
	return ret;
}