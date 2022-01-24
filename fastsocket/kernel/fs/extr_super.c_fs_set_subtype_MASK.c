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
struct TYPE_2__ {int /*<<< orphan*/  s_subtype; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct vfsmount* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfsmount*) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static struct vfsmount *FUNC4(struct vfsmount *mnt, const char *fstype)
{
	int err;
	const char *subtype = FUNC3(fstype, '.');
	if (subtype) {
		subtype++;
		err = -EINVAL;
		if (!subtype[0])
			goto err;
	} else
		subtype = "";

	mnt->mnt_sb->s_subtype = FUNC1(subtype, GFP_KERNEL);
	err = -ENOMEM;
	if (!mnt->mnt_sb->s_subtype)
		goto err;
	return mnt;

 err:
	FUNC2(mnt);
	return FUNC0(err);
}