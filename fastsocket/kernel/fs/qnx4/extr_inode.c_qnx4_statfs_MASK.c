#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  void* u32 ;
struct super_block {int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_magic; TYPE_1__* s_bdev; } ;
struct TYPE_7__ {void** val; } ;
struct kstatfs {int f_blocks; TYPE_3__ f_fsid; int /*<<< orphan*/  f_namelen; int /*<<< orphan*/  f_bfree; int /*<<< orphan*/  f_bavail; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_8__ {TYPE_2__* BitMap; } ;
struct TYPE_6__ {int /*<<< orphan*/  di_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QNX4_NAME_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 TYPE_4__* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct dentry *dentry, struct kstatfs *buf)
{
	struct super_block *sb = dentry->d_sb;
	u64 id = FUNC0(sb->s_bdev->bd_dev);

	FUNC2();

	buf->f_type    = sb->s_magic;
	buf->f_bsize   = sb->s_blocksize;
	buf->f_blocks  = FUNC1(FUNC4(sb)->BitMap->di_size) * 8;
	buf->f_bfree   = FUNC3(sb);
	buf->f_bavail  = buf->f_bfree;
	buf->f_namelen = QNX4_NAME_MAX;
	buf->f_fsid.val[0] = (u32)id;
	buf->f_fsid.val[1] = (u32)(id >> 32);

	FUNC5();

	return 0;
}