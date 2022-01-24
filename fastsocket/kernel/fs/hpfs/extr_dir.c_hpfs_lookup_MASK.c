#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct quad_buffer_head {int dummy; } ;
struct nameidata {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_14__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_13__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_12__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct inode {int i_state; int i_mode; int i_nlink; int i_size; int i_blocks; TYPE_5__ i_data; TYPE_4__ i_atime; TYPE_6__* i_sb; TYPE_3__ i_mtime; TYPE_2__ i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct hpfs_inode_info {int mmu_private; int /*<<< orphan*/  i_ea_mode; scalar_t__ i_ea_size; int /*<<< orphan*/  i_parent_dir; int /*<<< orphan*/  i_dno; } ;
struct hpfs_dirent {int file_size; scalar_t__ directory; scalar_t__ read_only; scalar_t__ ea_size; int /*<<< orphan*/  read_date; int /*<<< orphan*/  write_date; int /*<<< orphan*/  creation_date; scalar_t__ has_xtd_perm; scalar_t__ has_acl; int /*<<< orphan*/  fnode; } ;
struct TYPE_11__ {char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_17__ {scalar_t__ sb_eas; } ;
struct TYPE_16__ {int s_flags; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int I_NEW ; 
 int MS_RDONLY ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  hpfs_aops ; 
 int /*<<< orphan*/  FUNC2 (struct quad_buffer_head*) ; 
 int FUNC3 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  hpfs_file_iops ; 
 int /*<<< orphan*/  hpfs_file_ops ; 
 struct hpfs_inode_info* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 TYPE_8__* FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 struct inode* FUNC11 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 void* FUNC12 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct hpfs_dirent* FUNC14 (struct inode*,int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ *,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 

struct dentry *FUNC17(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
	const char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct quad_buffer_head qbh;
	struct hpfs_dirent *de;
	ino_t ino;
	int err;
	struct inode *result = NULL;
	struct hpfs_inode_info *hpfs_result;

	FUNC13();
	if ((err = FUNC3((char *)name, &len))) {
		if (err == -ENAMETOOLONG) {
			FUNC15();
			return FUNC0(-ENAMETOOLONG);
		}
		goto end_add;
	}

	/*
	 * '.' and '..' will never be passed here.
	 */

	de = FUNC14(dir, FUNC6(dir)->i_dno, (char *) name, len, NULL, &qbh);

	/*
	 * This is not really a bailout, just means file not found.
	 */

	if (!de) goto end;

	/*
	 * Get inode number, what we're after.
	 */

	ino = de->fnode;

	/*
	 * Go find or make an inode.
	 */

	result = FUNC11(dir->i_sb, ino);
	if (!result) {
		FUNC5(dir->i_sb, "hpfs_lookup: can't get inode");
		goto bail1;
	}
	if (result->i_state & I_NEW) {
		FUNC7(result);
		if (de->directory)
			FUNC8(result);
		else if (de->ea_size && FUNC9(dir->i_sb)->sb_eas)
			FUNC8(result);
		else {
			result->i_mode |= S_IFREG;
			result->i_mode &= ~0111;
			result->i_op = &hpfs_file_iops;
			result->i_fop = &hpfs_file_ops;
			result->i_nlink = 1;
		}
		FUNC16(result);
	}
	hpfs_result = FUNC6(result);
	if (!de->directory) hpfs_result->i_parent_dir = dir->i_ino;

	FUNC4(result, (char *)name, len);

	if (de->has_acl || de->has_xtd_perm) if (!(dir->i_sb->s_flags & MS_RDONLY)) {
		FUNC5(result->i_sb, "ACLs or XPERM found. This is probably HPFS386. This driver doesn't support it now. Send me some info on these structures");
		goto bail1;
	}

	/*
	 * Fill in the info from the directory if this is a newly created
	 * inode.
	 */

	if (!result->i_ctime.tv_sec) {
		if (!(result->i_ctime.tv_sec = FUNC12(dir->i_sb, de->creation_date)))
			result->i_ctime.tv_sec = 1;
		result->i_ctime.tv_nsec = 0;
		result->i_mtime.tv_sec = FUNC12(dir->i_sb, de->write_date);
		result->i_mtime.tv_nsec = 0;
		result->i_atime.tv_sec = FUNC12(dir->i_sb, de->read_date);
		result->i_atime.tv_nsec = 0;
		hpfs_result->i_ea_size = de->ea_size;
		if (!hpfs_result->i_ea_mode && de->read_only)
			result->i_mode &= ~0222;
		if (!de->directory) {
			if (result->i_size == -1) {
				result->i_size = de->file_size;
				result->i_data.a_ops = &hpfs_aops;
				FUNC6(result)->mmu_private = result->i_size;
			/*
			 * i_blocks should count the fnode and any anodes.
			 * We count 1 for the fnode and don't bother about
			 * anodes -- the disk heads are on the directory band
			 * and we want them to stay there.
			 */
				result->i_blocks = 1 + ((result->i_size + 511) >> 9);
			}
		}
	}

	FUNC2(&qbh);

	/*
	 * Made it.
	 */

	end:
	end_add:
	FUNC10(dentry);
	FUNC15();
	FUNC1(dentry, result);
	return NULL;

	/*
	 * Didn't.
	 */
	bail1:
	
	FUNC2(&qbh);
	
	/*bail:*/

	FUNC15();
	return FUNC0(-ENOENT);
}