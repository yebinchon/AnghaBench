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
struct super_block {int s_flags; TYPE_1__* s_root; } ;
struct proc_inode {scalar_t__ pid; } ;
struct pid_namespace {int dummy; } ;
struct file_system_type {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 int MS_ACTIVE ; 
 int MS_KERNMOUNT ; 
 struct proc_inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct pid_namespace*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct pid_namespace*) ; 
 int /*<<< orphan*/  proc_set_super ; 
 int /*<<< orphan*/  proc_test_super ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct super_block* FUNC10 (struct file_system_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC11 (struct vfsmount*,struct super_block*) ; 
 struct pid_namespace* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct file_system_type *fs_type,
	int flags, const char *dev_name, void *data, struct vfsmount *mnt)
{
	int err;
	struct super_block *sb;
	struct pid_namespace *ns;
	struct proc_inode *ei;
	char *options;

	if (flags & MS_KERNMOUNT) {
		ns = (struct pid_namespace *)data;
		options = NULL;
	} else {
		ns = FUNC12(current);
		options = data;
	}

	sb = FUNC10(fs_type, proc_test_super, proc_set_super, ns);
	if (FUNC0(sb))
		return FUNC2(sb);

	if (!sb->s_root) {
		sb->s_flags = flags;
		if (!FUNC7(options, ns)) {
			FUNC3(sb);
			return -EINVAL;
		}
		err = FUNC6(sb);
		if (err) {
			FUNC3(sb);
			return err;
		}

		sb->s_flags |= MS_ACTIVE;
	}
	ei = FUNC1(sb->s_root->d_inode);
	if (!ei->pid) {
		FUNC8();
		ei->pid = FUNC5(FUNC4(1, ns));
		FUNC9();
	}

	FUNC11(mnt, sb);
	return 0;
}