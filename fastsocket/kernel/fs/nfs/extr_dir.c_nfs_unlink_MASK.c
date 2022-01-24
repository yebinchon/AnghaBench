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
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_inode; int /*<<< orphan*/  d_count; TYPE_2__ d_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry)
{
	int error;
	int need_rehash = 0;

	FUNC4(VFS, "NFS: unlink(%s/%ld, %s)\n", dir->i_sb->s_id,
		dir->i_ino, dentry->d_name.name);

	FUNC9(&dcache_lock);
	FUNC9(&dentry->d_lock);
	if (FUNC1(&dentry->d_count) > 1) {
		FUNC10(&dentry->d_lock);
		FUNC10(&dcache_lock);
		/* Start asynchronous writeout of the inode */
		FUNC11(dentry->d_inode, 0);
		error = FUNC8(dir, dentry);
		return error;
	}
	if (!FUNC3(dentry)) {
		FUNC0(dentry);
		need_rehash = 1;
	}
	FUNC10(&dentry->d_lock);
	FUNC10(&dcache_lock);
	error = FUNC5(dentry);
	if (!error || error == -ENOENT) {
		FUNC7(dentry, FUNC6(dir));
	} else if (need_rehash)
		FUNC2(dentry);
	return error;
}