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
struct vfsmount {int dummy; } ;
struct path {struct vfsmount* mnt; struct dentry* dentry; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {int /*<<< orphan*/  d_sb; TYPE_1__ d_name; } ;
struct autofs_sb_info {int /*<<< orphan*/  type; } ;
struct autofs_info {int /*<<< orphan*/  last_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct autofs_info* FUNC1 (struct dentry*) ; 
 struct autofs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct path*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 

__attribute__((used)) static int FUNC9(struct vfsmount *mnt, struct dentry *dentry)
{
	struct dentry *top = dentry;
	struct path path = {.mnt = mnt, .dentry = dentry};
	int status = 1;

	FUNC0("dentry %p %.*s",
		dentry, (int)dentry->d_name.len, dentry->d_name.name);

	FUNC7(&path);

	if (!FUNC4(&path))
		goto done;

	if (FUNC5(path.dentry)) {
		struct autofs_sb_info *sbi = FUNC2(path.dentry->d_sb);

		/* This is an autofs submount, we can't expire it */
		if (FUNC3(sbi->type))
			goto done;
	}

	/* Update the expiry counter if fs is busy */
	if (!FUNC6(path.mnt)) {
		struct autofs_info *ino = FUNC1(top);
		ino->last_used = jiffies;
		goto done;
	}

	status = 0;
done:
	FUNC0("returning = %d", status);
	FUNC8(&path);
	return status;
}