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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_1__ d_name; struct inode* d_inode; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  ocfs2_dentry_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC13(struct dentry *child)
{
	int status;
	u64 blkno;
	struct dentry *parent;
	struct inode *dir = child->d_inode;

	FUNC6("(0x%p, '%.*s')\n", child,
		   child->d_name.len, child->d_name.name);

	FUNC5(0, "find parent of directory %llu\n",
	     (unsigned long long)FUNC2(dir)->ip_blkno);

	status = FUNC10(dir, NULL, 0);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC7(status);
		parent = FUNC0(status);
		goto bail;
	}

	status = FUNC12(dir, "..", 2, &blkno);
	if (status < 0) {
		parent = FUNC0(-ENOENT);
		goto bail_unlock;
	}

	parent = FUNC4(FUNC9(FUNC3(dir->i_sb), blkno, 0, 0));
	if (!FUNC1(parent))
		parent->d_op = &ocfs2_dentry_ops;

bail_unlock:
	FUNC11(dir, 0);

bail:
	FUNC8(parent);

	return parent;
}