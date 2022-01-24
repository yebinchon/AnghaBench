#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
struct nilfs_inode_info {int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_bmap; scalar_t__ i_cno; scalar_t__ i_dir_start_lookup; void* i_dir_acl; void* i_file_acl; void* i_flags; } ;
struct nilfs_inode {int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_dir_acl; int /*<<< orphan*/  i_file_acl; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_mtime_nsec; int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_links_count; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
struct TYPE_6__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_4__ {void* tv_nsec; void* tv_sec; } ;
struct inode {scalar_t__ i_mode; scalar_t__ i_nlink; void* i_generation; void* i_blocks; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; void* i_size; scalar_t__ i_gid; scalar_t__ i_uid; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int EINVAL ; 
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_BMAP ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct nilfs_inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct inode *inode,
			    struct nilfs_inode *raw_inode)
{
	struct nilfs_inode_info *ii = FUNC0(inode);
	int err;

	inode->i_mode = FUNC4(raw_inode->i_mode);
	inode->i_uid = (uid_t)FUNC5(raw_inode->i_uid);
	inode->i_gid = (gid_t)FUNC5(raw_inode->i_gid);
	inode->i_nlink = FUNC4(raw_inode->i_links_count);
	inode->i_size = FUNC6(raw_inode->i_size);
	inode->i_atime.tv_sec = FUNC6(raw_inode->i_mtime);
	inode->i_ctime.tv_sec = FUNC6(raw_inode->i_ctime);
	inode->i_mtime.tv_sec = FUNC6(raw_inode->i_mtime);
	inode->i_atime.tv_nsec = FUNC5(raw_inode->i_mtime_nsec);
	inode->i_ctime.tv_nsec = FUNC5(raw_inode->i_ctime_nsec);
	inode->i_mtime.tv_nsec = FUNC5(raw_inode->i_mtime_nsec);
	if (inode->i_nlink == 0 && inode->i_mode == 0)
		return -EINVAL; /* this inode is deleted */

	inode->i_blocks = FUNC6(raw_inode->i_blocks);
	ii->i_flags = FUNC5(raw_inode->i_flags);
#if 0
	ii->i_file_acl = le32_to_cpu(raw_inode->i_file_acl);
	ii->i_dir_acl = S_ISREG(inode->i_mode) ?
		0 : le32_to_cpu(raw_inode->i_dir_acl);
#endif
	ii->i_dir_start_lookup = 0;
	ii->i_cno = 0;
	inode->i_generation = FUNC5(raw_inode->i_generation);

	if (FUNC3(inode->i_mode) || FUNC1(inode->i_mode) ||
	    FUNC2(inode->i_mode)) {
		err = FUNC7(ii->i_bmap, raw_inode);
		if (err < 0)
			return err;
		FUNC8(NILFS_I_BMAP, &ii->i_state);
		/* No lock is needed; iget() ensures it. */
	}
	return 0;
}