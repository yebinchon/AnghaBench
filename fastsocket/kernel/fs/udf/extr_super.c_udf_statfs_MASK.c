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
typedef  int u64 ;
typedef  void* u32 ;
struct udf_sb_info {size_t s_partition; TYPE_2__* s_partmaps; int /*<<< orphan*/ * s_lvid_bh; } ;
struct super_block {int /*<<< orphan*/  s_blocksize; TYPE_1__* s_bdev; } ;
struct logicalVolIntegrityDescImpUse {int /*<<< orphan*/  numDirs; int /*<<< orphan*/  numFiles; } ;
struct TYPE_6__ {void** val; } ;
struct kstatfs {TYPE_3__ f_fsid; scalar_t__ f_namelen; scalar_t__ f_bfree; scalar_t__ f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; int /*<<< orphan*/  f_blocks; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_partition_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 scalar_t__ UDF_NAME_LEN ; 
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  UDF_SUPER_MAGIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 struct logicalVolIntegrityDescImpUse* FUNC4 (struct udf_sb_info*) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, struct kstatfs *buf)
{
	struct super_block *sb = dentry->d_sb;
	struct udf_sb_info *sbi = FUNC0(sb);
	struct logicalVolIntegrityDescImpUse *lvidiu;
	u64 id = FUNC1(sb->s_bdev->bd_dev);

	if (sbi->s_lvid_bh != NULL)
		lvidiu = FUNC4(sbi);
	else
		lvidiu = NULL;

	buf->f_type = UDF_SUPER_MAGIC;
	buf->f_bsize = sb->s_blocksize;
	buf->f_blocks = sbi->s_partmaps[sbi->s_partition].s_partition_len;
	buf->f_bfree = FUNC3(sb);
	buf->f_bavail = buf->f_bfree;
	buf->f_files = (lvidiu != NULL ? (FUNC2(lvidiu->numFiles) +
					  FUNC2(lvidiu->numDirs)) : 0)
			+ buf->f_bfree;
	buf->f_ffree = buf->f_bfree;
	buf->f_namelen = UDF_NAME_LEN - 2;
	buf->f_fsid.val[0] = (u32)id;
	buf->f_fsid.val[1] = (u32)(id >> 32);

	return 0;
}