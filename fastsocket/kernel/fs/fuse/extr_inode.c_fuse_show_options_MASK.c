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
struct vfsmount {TYPE_1__* mnt_sb; } ;
struct seq_file {int dummy; } ;
struct fuse_conn {int flags; int /*<<< orphan*/  max_read; int /*<<< orphan*/  group_id; int /*<<< orphan*/  user_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_blocksize; scalar_t__ s_bdev; } ;

/* Variables and functions */
 int FUSE_ALLOW_OTHER ; 
 int /*<<< orphan*/  FUSE_DEFAULT_BLKSIZE ; 
 int FUSE_DEFAULT_PERMISSIONS ; 
 struct fuse_conn* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, struct vfsmount *mnt)
{
	struct fuse_conn *fc = FUNC0(mnt->mnt_sb);

	FUNC1(m, ",user_id=%u", fc->user_id);
	FUNC1(m, ",group_id=%u", fc->group_id);
	if (fc->flags & FUSE_DEFAULT_PERMISSIONS)
		FUNC2(m, ",default_permissions");
	if (fc->flags & FUSE_ALLOW_OTHER)
		FUNC2(m, ",allow_other");
	if (fc->max_read != ~0)
		FUNC1(m, ",max_read=%u", fc->max_read);
	if (mnt->mnt_sb->s_bdev &&
	    mnt->mnt_sb->s_blocksize != FUSE_DEFAULT_BLKSIZE)
		FUNC1(m, ",blksize=%lu", mnt->mnt_sb->s_blocksize);
	return 0;
}