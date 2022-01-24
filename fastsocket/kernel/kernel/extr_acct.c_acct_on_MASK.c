#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct pid_namespace {struct bsd_acct_struct* bacct; } ;
struct TYPE_8__ {struct vfsmount* mnt; TYPE_2__* dentry; } ;
struct file {TYPE_4__ f_path; TYPE_3__* f_op; } ;
struct bsd_acct_struct {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  write; } ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EACCES ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int O_APPEND ; 
 int O_LARGEFILE ; 
 int O_WRONLY ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bsd_acct_struct*,struct file*,struct pid_namespace*) ; 
 int /*<<< orphan*/  acct_lock ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ *) ; 
 struct file* FUNC5 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bsd_acct_struct*) ; 
 struct bsd_acct_struct* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC9 (struct vfsmount*) ; 
 int FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct pid_namespace* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(const char *name)
{
	struct file *file;
	struct vfsmount *mnt;
	int error;
	struct pid_namespace *ns;
	struct bsd_acct_struct *acct = NULL;

	/* Difference from BSD - they don't do O_APPEND */
	file = FUNC5(name, O_WRONLY|O_APPEND|O_LARGEFILE, 0);
	if (FUNC0(file))
		return FUNC1(file);

	if (!FUNC2(file->f_path.dentry->d_inode->i_mode)) {
		FUNC4(file, NULL);
		return -EACCES;
	}

	if (!file->f_op->write) {
		FUNC4(file, NULL);
		return -EIO;
	}

	ns = FUNC13(current);
	if (ns->bacct == NULL) {
		acct = FUNC7(sizeof(struct bsd_acct_struct), GFP_KERNEL);
		if (acct == NULL) {
			FUNC4(file, NULL);
			return -ENOMEM;
		}
	}

	error = FUNC10(file);
	if (error) {
		FUNC6(acct);
		FUNC4(file, NULL);
		return error;
	}

	FUNC11(&acct_lock);
	if (ns->bacct == NULL) {
		ns->bacct = acct;
		acct = NULL;
	}

	mnt = file->f_path.mnt;
	FUNC8(mnt);
	FUNC3(ns->bacct, file, ns);
	FUNC12(&acct_lock);

	FUNC9(mnt); /* it's pinned, now give up active reference */
	FUNC6(acct);

	return 0;
}