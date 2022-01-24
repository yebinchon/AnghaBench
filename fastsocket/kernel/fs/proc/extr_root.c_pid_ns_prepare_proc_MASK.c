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
struct vfsmount {int dummy; } ;
struct pid_namespace {struct vfsmount* proc_mnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int FUNC1 (struct vfsmount*) ; 
 struct vfsmount* FUNC2 (int /*<<< orphan*/ *,struct pid_namespace*) ; 
 int /*<<< orphan*/  proc_fs_type ; 

int FUNC3(struct pid_namespace *ns)
{
	struct vfsmount *mnt;

	mnt = FUNC2(&proc_fs_type, ns);
	if (FUNC0(mnt))
		return FUNC1(mnt);

	ns->proc_mnt = mnt;
	return 0;
}