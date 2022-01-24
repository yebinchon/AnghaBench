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
struct v9fs_session_info {scalar_t__ cache; } ;
struct TYPE_4__ {scalar_t__ version; } ;
struct p9_fid {TYPE_2__ qid; } ;
struct inode {scalar_t__ i_blocks; } ;
struct TYPE_3__ {int /*<<< orphan*/  dentry; } ;
struct file {int f_flags; int /*<<< orphan*/ * f_op; struct p9_fid* private_data; TYPE_1__ f_path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int O_APPEND ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int P9_OTRUNC ; 
 int FUNC2 (struct p9_fid*) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_fid*) ; 
 int FUNC6 (struct p9_fid*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  v9fs_cached_file_operations ; 
 int /*<<< orphan*/  FUNC8 (struct v9fs_session_info*) ; 
 struct p9_fid* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v9fs_file_operations ; 
 struct v9fs_session_info* FUNC10 (struct inode*) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 

int FUNC12(struct inode *inode, struct file *file)
{
	int err;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid;
	int omode;

	FUNC1(P9_DEBUG_VFS, "inode: %p file: %p \n", inode, file);
	v9ses = FUNC10(inode);
	omode = FUNC11(file->f_flags, FUNC8(v9ses));
	fid = file->private_data;
	if (!fid) {
		fid = FUNC9(file->f_path.dentry);
		if (FUNC0(fid))
			return FUNC2(fid);

		err = FUNC6(fid, omode);
		if (err < 0) {
			FUNC5(fid);
			return err;
		}
		if (omode & P9_OTRUNC) {
			FUNC4(inode, 0);
			inode->i_blocks = 0;
		}
		if ((file->f_flags & O_APPEND) && (!FUNC8(v9ses)))
			FUNC3(file, 0, SEEK_END);
	}

	file->private_data = fid;
	if ((fid->qid.version) && (v9ses->cache)) {
		FUNC1(P9_DEBUG_VFS, "cached");
		/* enable cached file options */
		if(file->f_op == &v9fs_file_operations)
			file->f_op = &v9fs_cached_file_operations;

#ifdef CONFIG_9P_FSCACHE
		v9fs_cache_inode_set_cookie(inode, file);
#endif
	}

	return 0;
}