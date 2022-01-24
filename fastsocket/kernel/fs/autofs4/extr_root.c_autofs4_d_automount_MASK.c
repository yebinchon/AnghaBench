#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct path {struct dentry* dentry; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int version; int /*<<< orphan*/  fs_lock; } ;
struct autofs_info {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int AUTOFS_INF_PENDING ; 
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ENOENT ; 
 struct vfsmount* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct autofs_info* FUNC3 (struct dentry*) ; 
 int FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct path*) ; 
 scalar_t__ FUNC6 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int FUNC9 (struct dentry*) ; 
 scalar_t__ FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vfsmount *FUNC14(struct path *path)
{
	struct dentry *dentry = path->dentry;
	struct autofs_sb_info *sbi = FUNC7(dentry->d_sb);
	struct autofs_info *ino = FUNC3(dentry);
	int status;

	FUNC0("dentry=%p %.*s",
		dentry, dentry->d_name.len, dentry->d_name.name);

	/* The daemon never triggers a mount. */
	if (FUNC6(sbi))
		return NULL;

	/*
	 * If an expire request is pending everyone must wait.
	 * If the expire fails we're still mounted so continue
	 * the follow and return. A return of -EAGAIN (which only
	 * happens with indirect mounts) means the expire completed
	 * and the directory was removed, so just go ahead and try
	 * the mount.
	 */
	status = FUNC9(dentry);
	if (status && status != -EAGAIN)
		return NULL;

	/* Callback to the daemon to perform the mount or wait */
	FUNC12(&sbi->fs_lock);
	if (ino->flags & AUTOFS_INF_PENDING) {
		FUNC13(&sbi->fs_lock);
		status = FUNC4(dentry);
		if (status)
			return FUNC1(status);
		goto done;
	}

	/*
	 * If the dentry is a symlink it's equivalent to a directory
	 * having d_mountpoint() true, so there's no need to call back
	 * to the daemon.
	 */
	if (dentry->d_inode && FUNC2(dentry->d_inode->i_mode)) {
		FUNC13(&sbi->fs_lock);
		goto done;
	}

	if (!FUNC8(dentry)) {
		/*
		 * It's possible that user space hasn't removed directories
		 * after umounting a rootless multi-mount, although it
		 * should. For v5 have_submounts() is sufficient to handle
		 * this because the leaves of the directory tree under the
		 * mount never trigger mounts themselves (they have an autofs
		 * trigger mount mounted on them). But v4 pseudo direct mounts
		 * do need the leaves to to trigger mounts. In this case we
		 * have no choice but to use the list_empty() check and
		 * require user space behave.
		 */
		if (sbi->version > 4) {
			if (FUNC10(dentry)) {
				FUNC13(&sbi->fs_lock);
				goto done;
			}
		} else {
			if (!FUNC11(dentry)) {
				FUNC13(&sbi->fs_lock);
				goto done;
			}
		}
		ino->flags |= AUTOFS_INF_PENDING;
		FUNC13(&sbi->fs_lock);
		status = FUNC4(dentry);
		FUNC12(&sbi->fs_lock);
		ino->flags &= ~AUTOFS_INF_PENDING;
		if (status) {
			FUNC13(&sbi->fs_lock);
			return FUNC1(status);
		}
	}
	FUNC13(&sbi->fs_lock);
done:
	/* Mount succeeded, check if we ended up with a new dentry */
	dentry = FUNC5(path);
	if (!dentry)
		return FUNC1(-ENOENT);

	return NULL;
}