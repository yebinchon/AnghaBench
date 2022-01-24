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
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct inode*,struct dentry*,int) ; 
 int FUNC2 (struct p9_fid*) ; 
 int FUNC3 (struct p9_fid*) ; 
 struct p9_fid* FUNC4 (struct dentry*) ; 
 struct v9fs_session_info* FUNC5 (struct inode*) ; 

__attribute__((used)) static int FUNC6(struct inode *dir, struct dentry *file, int rmdir)
{
	struct inode *file_inode;
	struct v9fs_session_info *v9ses;
	struct p9_fid *v9fid;

	FUNC1(P9_DEBUG_VFS, "inode: %p dentry: %p rmdir: %d\n", dir, file,
		rmdir);

	file_inode = file->d_inode;
	v9ses = FUNC5(file_inode);
	v9fid = FUNC4(file);
	if (FUNC0(v9fid))
		return FUNC2(v9fid);

	return FUNC3(v9fid);
}