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
struct path {struct vfsmount* mnt; TYPE_2__* dentry; } ;
struct TYPE_7__ {TYPE_1__* d_op; int /*<<< orphan*/  d_flags; } ;
struct TYPE_6__ {int (* d_manage ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int DCACHE_MANAGED_DENTRY ; 
 unsigned int DCACHE_MANAGE_TRANSIT ; 
 unsigned int DCACHE_MOUNTED ; 
 unsigned int DCACHE_NEED_AUTOMOUNT ; 
 int EISDIR ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct path*,unsigned int,int*) ; 
 struct vfsmount* FUNC5 (struct path*) ; 
 unsigned int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct vfsmount*) ; 
 int FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct path *path, unsigned flags)
{
	struct vfsmount *mnt = path->mnt; /* held by caller, must be left alone */
	unsigned managed;
	bool need_mntput = false;
	int ret = 0;

	/* Given that we're not holding a lock here, we retain the value in a
	 * local variable for each dentry as we look at it so that we don't see
	 * the components of that value change under us */
	while (managed = FUNC0(path->dentry->d_flags)|
		FUNC6(path->dentry),
	       managed &= DCACHE_MANAGED_DENTRY,
	       FUNC9(managed != 0)) {
		/* Allow the filesystem to manage the transit without i_mutex
		 * being held. */
		if (managed & DCACHE_MANAGE_TRANSIT) {
			FUNC1(!path->dentry->d_op);
			FUNC1(!path->dentry->d_op->d_manage);
			ret = path->dentry->d_op->d_manage(path->dentry, false);
			if (ret < 0)
				break;
		}

		/* Transit to a mounted filesystem. */
		if (managed & DCACHE_MOUNTED) {
			struct vfsmount *mounted = FUNC5(path);
			if (mounted) {
				FUNC3(path->dentry);
				if (need_mntput)
					FUNC7(path->mnt);
				path->mnt = mounted;
				path->dentry = FUNC2(mounted->mnt_root);
				need_mntput = true;
				continue;
			}

			/* Something is mounted on this dentry in another
			 * namespace and/or whatever was mounted there in this
			 * namespace got unmounted before we managed to get the
			 * vfsmount_lock */
		}

		/* Handle an automount point */
		if (managed & DCACHE_NEED_AUTOMOUNT) {
			ret = FUNC4(path, flags, &need_mntput);
			if (ret < 0)
				break;
			continue;
		}

		/* We didn't change the current path point */
		break;
	}

	if (need_mntput && path->mnt == mnt)
		FUNC7(path->mnt);
	if (ret == -EISDIR)
		ret = 0;
	return ret;
}