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
struct vfsmount {int /*<<< orphan*/  mnt_root; } ;
struct path {int /*<<< orphan*/  dentry; struct vfsmount* mnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct vfsmount* FUNC2 (struct path*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 

int FUNC4(struct path *path)
{
	struct vfsmount *mounted;

	mounted = FUNC2(path);
	if (mounted) {
		FUNC1(path->dentry);
		FUNC3(path->mnt);
		path->mnt = mounted;
		path->dentry = FUNC0(mounted->mnt_root);
		return 1;
	}
	return 0;
}