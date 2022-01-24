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
struct file_system_type {int fs_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_subtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct vfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 int FS_HAS_SUBTYPE ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*) ; 
 struct vfsmount* FUNC2 (struct vfsmount*,char const*) ; 
 struct file_system_type* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct file_system_type*) ; 
 struct vfsmount* FUNC5 (struct file_system_type*,int,char const*,void*) ; 

struct vfsmount *
FUNC6(const char *fstype, int flags, const char *name, void *data)
{
	struct file_system_type *type = FUNC3(fstype);
	struct vfsmount *mnt;
	if (!type)
		return FUNC0(-ENODEV);
	mnt = FUNC5(type, flags, name, data);
	if (!FUNC1(mnt) && (type->fs_flags & FS_HAS_SUBTYPE) &&
	    !mnt->mnt_sb->s_subtype)
		mnt = FUNC2(mnt, fstype);
	FUNC4(type);
	return mnt;
}