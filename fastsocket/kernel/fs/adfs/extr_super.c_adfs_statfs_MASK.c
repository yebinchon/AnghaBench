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
typedef  int u64 ;
typedef  void* u32 ;
struct super_block {int /*<<< orphan*/  s_blocksize; TYPE_1__* s_bdev; } ;
struct TYPE_4__ {void** val; } ;
struct kstatfs {int f_files; int f_bavail; int f_bfree; long f_ffree; TYPE_2__ f_fsid; scalar_t__ f_blocks; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_namelen; int /*<<< orphan*/  f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct adfs_sb_info {int s_ids_per_zone; int s_map_size; scalar_t__ s_size; int /*<<< orphan*/  s_namelen; } ;
struct TYPE_3__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 struct adfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  ADFS_SUPER_MAGIC ; 
 int FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dentry *dentry, struct kstatfs *buf)
{
	struct super_block *sb = dentry->d_sb;
	struct adfs_sb_info *sbi = FUNC0(sb);
	u64 id = FUNC2(sb->s_bdev->bd_dev);

	buf->f_type    = ADFS_SUPER_MAGIC;
	buf->f_namelen = sbi->s_namelen;
	buf->f_bsize   = sb->s_blocksize;
	buf->f_blocks  = sbi->s_size;
	buf->f_files   = sbi->s_ids_per_zone * sbi->s_map_size;
	buf->f_bavail  =
	buf->f_bfree   = FUNC1(sb);
	buf->f_ffree   = (long)(buf->f_bfree * buf->f_files) / (long)buf->f_blocks;
	buf->f_fsid.val[0] = (u32)id;
	buf->f_fsid.val[1] = (u32)(id >> 32);

	return 0;
}