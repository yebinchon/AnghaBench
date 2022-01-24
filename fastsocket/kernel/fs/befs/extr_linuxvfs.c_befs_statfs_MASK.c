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
struct super_block {int /*<<< orphan*/  s_blocksize; TYPE_1__* s_bdev; } ;
struct TYPE_5__ {void** val; } ;
struct kstatfs {int /*<<< orphan*/  f_namelen; TYPE_2__ f_fsid; scalar_t__ f_ffree; scalar_t__ f_files; scalar_t__ f_bfree; scalar_t__ f_bavail; scalar_t__ f_blocks; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_6__ {scalar_t__ used_blocks; scalar_t__ num_blocks; } ;
struct TYPE_4__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEFS_NAME_LEN ; 
 TYPE_3__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  BEFS_SUPER_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct dentry *dentry, struct kstatfs *buf)
{
	struct super_block *sb = dentry->d_sb;
	u64 id = FUNC2(sb->s_bdev->bd_dev);

	FUNC1(sb, "---> befs_statfs()");

	buf->f_type = BEFS_SUPER_MAGIC;
	buf->f_bsize = sb->s_blocksize;
	buf->f_blocks = FUNC0(sb)->num_blocks;
	buf->f_bfree = FUNC0(sb)->num_blocks - FUNC0(sb)->used_blocks;
	buf->f_bavail = buf->f_bfree;
	buf->f_files = 0;	/* UNKNOWN */
	buf->f_ffree = 0;	/* UNKNOWN */
	buf->f_fsid.val[0] = (u32)id;
	buf->f_fsid.val[1] = (u32)(id >> 32);
	buf->f_namelen = BEFS_NAME_LEN;

	FUNC1(sb, "<--- befs_statfs()");

	return 0;
}