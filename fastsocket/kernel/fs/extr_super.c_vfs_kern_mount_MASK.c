#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {TYPE_1__* mnt_sb; int /*<<< orphan*/  mnt_root; struct vfsmount* mnt_parent; int /*<<< orphan*/  mnt_mountpoint; } ;
struct file_system_type {int fs_flags; int (* get_sb ) (struct file_system_type*,int,char const*,void*,struct vfsmount*) ;int /*<<< orphan*/  name; } ;
struct TYPE_3__ {scalar_t__ s_maxbytes; int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct vfsmount* FUNC1 (int) ; 
 int FS_BINARY_MOUNTDATA ; 
 int /*<<< orphan*/  MS_BORN ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC3 () ; 
 struct vfsmount* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct vfsmount*) ; 
 int FUNC9 (void*,char*) ; 
 int FUNC10 (TYPE_1__*,int,char*) ; 
 int FUNC11 (struct file_system_type*,int,char const*,void*,struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct vfsmount *
FUNC13(struct file_system_type *type, int flags, const char *name, void *data)
{
	struct vfsmount *mnt;
	char *secdata = NULL;
	int error;

	if (!type)
		return FUNC1(-ENODEV);

	error = -ENOMEM;
	mnt = FUNC4(name);
	if (!mnt)
		goto out;

	if (data && !(type->fs_flags & FS_BINARY_MOUNTDATA)) {
		secdata = FUNC3();
		if (!secdata)
			goto out_mnt;

		error = FUNC9(data, secdata);
		if (error)
			goto out_free_secdata;
	}

	error = type->get_sb(type, flags, name, data, mnt);
	if (error < 0)
		goto out_free_secdata;
	FUNC0(!mnt->mnt_sb);
	mnt->mnt_sb->s_flags |= MS_BORN;

 	error = FUNC10(mnt->mnt_sb, flags, secdata);
 	if (error)
 		goto out_sb;

	/*
	 * filesystems should never set s_maxbytes larger than MAX_LFS_FILESIZE
	 * but s_maxbytes was an unsigned long long for many releases. Throw
	 * this warning for a little while to try and catch filesystems that
	 * violate this rule. This warning should be either removed or
	 * converted to a BUG() in 2.6.34.
	 */
	FUNC2((mnt->mnt_sb->s_maxbytes < 0), "%s set sb->s_maxbytes to "
		"negative value (%lld)\n", type->name, mnt->mnt_sb->s_maxbytes);

	mnt->mnt_mountpoint = mnt->mnt_root;
	mnt->mnt_parent = mnt;
	FUNC12(&mnt->mnt_sb->s_umount);
	FUNC7(secdata);
	return mnt;
out_sb:
	FUNC6(mnt->mnt_root);
	FUNC5(mnt->mnt_sb);
out_free_secdata:
	FUNC7(secdata);
out_mnt:
	FUNC8(mnt);
out:
	return FUNC1(error);
}