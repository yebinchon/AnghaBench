#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int /*<<< orphan*/  mnt_root; } ;
struct path {TYPE_2__* dentry; struct vfsmount* mnt; } ;
struct TYPE_7__ {TYPE_1__* d_op; int /*<<< orphan*/  d_flags; } ;
struct TYPE_6__ {int (* d_manage ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int DCACHE_MANAGED_DENTRY ; 
 unsigned int DCACHE_MANAGE_TRANSIT ; 
 unsigned int DCACHE_MOUNTED ; 
 int EISDIR ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct vfsmount* FUNC4 (struct path*) ; 
 unsigned int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct vfsmount*) ; 
 int FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 

int FUNC9(struct path *path, bool mounting_here)
{
	unsigned managed;
	int ret;

	while (managed = FUNC0(path->dentry->d_flags)|
		FUNC5(path->dentry),
	       FUNC8(managed & DCACHE_MANAGED_DENTRY)) {
		/* Allow the filesystem to manage the transit without i_mutex
		 * being held.
		 *
		 * We indicate to the filesystem if someone is trying to mount
		 * something here.  This gives autofs the chance to deny anyone
		 * other than its daemon the right to mount on its
		 * superstructure.
		 *
		 * The filesystem may sleep at this point.
		 */
		if (managed & DCACHE_MANAGE_TRANSIT) {
			FUNC1(!path->dentry->d_op);
			FUNC1(!path->dentry->d_op->d_manage);
			ret = path->dentry->d_op->d_manage(path->dentry, mounting_here);
			if (ret < 0)
				return ret == -EISDIR ? 0 : ret;
		}

		/* Transit to a mounted filesystem. */
		if (managed & DCACHE_MOUNTED) {
			struct vfsmount *mounted = FUNC4(path);
			if (!mounted)
				break;
			FUNC3(path->dentry);
			FUNC6(path->mnt);
			path->mnt = mounted;
			path->dentry = FUNC2(mounted->mnt_root);
			continue;
		}

		/* Don't handle automount points here */
		break;
	}
	return 0;
}