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
struct nilfs_inode_info {int /*<<< orphan*/  i_bmap; int /*<<< orphan*/  i_flags; } ;
struct nilfs_inode {void* i_device_code; void* i_generation; void* i_flags; void* i_blocks; void* i_mtime_nsec; void* i_ctime_nsec; void* i_mtime; void* i_ctime; void* i_size; void* i_links_count; void* i_gid; void* i_uid; void* i_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_blocks; TYPE_2__ i_mtime; TYPE_1__ i_ctime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct nilfs_inode*) ; 

void FUNC8(struct inode *inode,
			      struct nilfs_inode *raw_inode, int has_bmap)
{
	struct nilfs_inode_info *ii = FUNC0(inode);

	raw_inode->i_mode = FUNC3(inode->i_mode);
	raw_inode->i_uid = FUNC4(inode->i_uid);
	raw_inode->i_gid = FUNC4(inode->i_gid);
	raw_inode->i_links_count = FUNC3(inode->i_nlink);
	raw_inode->i_size = FUNC5(inode->i_size);
	raw_inode->i_ctime = FUNC5(inode->i_ctime.tv_sec);
	raw_inode->i_mtime = FUNC5(inode->i_mtime.tv_sec);
	raw_inode->i_ctime_nsec = FUNC4(inode->i_ctime.tv_nsec);
	raw_inode->i_mtime_nsec = FUNC4(inode->i_mtime.tv_nsec);
	raw_inode->i_blocks = FUNC5(inode->i_blocks);

	raw_inode->i_flags = FUNC4(ii->i_flags);
	raw_inode->i_generation = FUNC4(inode->i_generation);

	if (has_bmap)
		FUNC7(ii->i_bmap, raw_inode);
	else if (FUNC2(inode->i_mode) || FUNC1(inode->i_mode))
		raw_inode->i_device_code =
			FUNC5(FUNC6(inode->i_rdev));
	/* When extending inode, nilfs->ns_inode_size should be checked
	   for substitutions of appended fields */
}