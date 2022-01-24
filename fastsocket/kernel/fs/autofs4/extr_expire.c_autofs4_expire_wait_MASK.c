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
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  fs_lock; } ;
struct autofs_info {int flags; int /*<<< orphan*/  expire_complete; } ;

/* Variables and functions */
 int AUTOFS_INF_EXPIRING ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  NFY_NONE ; 
 struct autofs_info* FUNC1 (struct dentry*) ; 
 struct autofs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct autofs_sb_info*,struct dentry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct dentry *dentry)
{
	struct autofs_sb_info *sbi = FUNC2(dentry->d_sb);
	struct autofs_info *ino = FUNC1(dentry);
	int status;

	/* Block on any pending expire */
	FUNC5(&sbi->fs_lock);
	if (ino->flags & AUTOFS_INF_EXPIRING) {
		FUNC6(&sbi->fs_lock);

		FUNC0("waiting for expire %p name=%.*s",
			 dentry, dentry->d_name.len, dentry->d_name.name);

		status = FUNC3(sbi, dentry, NFY_NONE);
		FUNC7(&ino->expire_complete);

		FUNC0("expire done status=%d", status);

		if (FUNC4(dentry))
			return -EAGAIN;

		return status;
	}
	FUNC6(&sbi->fs_lock);

	return 0;
}