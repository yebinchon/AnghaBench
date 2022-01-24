#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_umount; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {scalar_t__ mnt_root; int mnt_flags; int /*<<< orphan*/  mnt_ns; struct super_block* mnt_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int MS_BIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct super_block*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,void*) ; 
 int FUNC6 (struct super_block*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

__attribute__((used)) static int FUNC11(struct path *path, int flags, int mnt_flags,
		      void *data)
{
	int err;
	struct super_block *sb = path->mnt->mnt_sb;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	if (!FUNC2(path->mnt))
		return -EINVAL;

	if (path->dentry != path->mnt->mnt_root)
		return -EINVAL;

	err = FUNC6(sb, data);
	if (err)
		return err;

	FUNC4(&sb->s_umount);
	if (flags & MS_BIND)
		err = FUNC1(path->mnt, flags);
	else
		err = FUNC3(sb, flags, data, 0);
	if (!err)
		path->mnt->mnt_flags = mnt_flags;
	FUNC10(&sb->s_umount);
	if (!err) {
		FUNC5(path->mnt, flags, data);

		FUNC7(&vfsmount_lock);
		FUNC9(path->mnt->mnt_ns);
		FUNC8(&vfsmount_lock);
	}
	return err;
}