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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {int /*<<< orphan*/ * id_table; } ;
typedef  int /*<<< orphan*/  disk_id ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 

int FUNC5(struct super_block *sb, unsigned int index,
					unsigned int *id)
{
	struct squashfs_sb_info *msblk = sb->s_fs_info;
	int block = FUNC0(index);
	int offset = FUNC1(index);
	u64 start_block = FUNC3(msblk->id_table[block]);
	__le32 disk_id;
	int err;

	err = FUNC4(sb, &disk_id, &start_block, &offset,
							sizeof(disk_id));
	if (err < 0)
		return err;

	*id = FUNC2(disk_id);
	return 0;
}