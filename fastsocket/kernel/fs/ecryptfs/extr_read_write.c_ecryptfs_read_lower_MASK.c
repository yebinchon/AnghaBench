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
struct inode {int dummy; } ;
struct ecryptfs_inode_info {int /*<<< orphan*/  lower_file_mutex; TYPE_1__* lower_file; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  mm_segment_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  f_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ecryptfs_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,char*,size_t,int /*<<< orphan*/ *) ; 

int FUNC8(char *data, loff_t offset, size_t size,
			struct inode *ecryptfs_inode)
{
	struct ecryptfs_inode_info *inode_info =
		FUNC1(ecryptfs_inode);
	mm_segment_t fs_save;
	ssize_t rc;

	FUNC4(&inode_info->lower_file_mutex);
	FUNC0(!inode_info->lower_file);
	inode_info->lower_file->f_pos = offset;
	fs_save = FUNC3();
	FUNC6(FUNC2());
	rc = FUNC7(inode_info->lower_file, data, size,
		      &inode_info->lower_file->f_pos);
	FUNC6(fs_save);
	FUNC5(&inode_info->lower_file_mutex);
	return rc;
}