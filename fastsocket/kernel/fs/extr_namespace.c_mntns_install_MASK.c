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
struct path {int /*<<< orphan*/  dentry; TYPE_1__* mnt; } ;
struct nsproxy {struct mnt_namespace* mnt_ns; } ;
struct mnt_namespace {TYPE_1__* root; } ;
struct fs_struct {int users; } ;
struct TYPE_4__ {struct fs_struct* fs; } ;
struct TYPE_3__ {int /*<<< orphan*/  mnt_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_CHROOT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct path*) ; 
 int /*<<< orphan*/  FUNC3 (struct mnt_namespace*) ; 
 int /*<<< orphan*/  FUNC4 (struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (struct mnt_namespace*) ; 
 int /*<<< orphan*/  FUNC7 (struct fs_struct*,struct path*) ; 
 int /*<<< orphan*/  FUNC8 (struct fs_struct*,struct path*) ; 

__attribute__((used)) static int FUNC9(struct nsproxy *nsproxy, void *ns)
{
	struct fs_struct *fs = current->fs;
	struct mnt_namespace *mnt_ns = ns;
	struct path root;

	if (!FUNC0(CAP_SYS_ADMIN) || !FUNC0(CAP_SYS_CHROOT))
		return -EINVAL;

	if (fs->users != 1)
		return -EINVAL;

	FUNC3(mnt_ns);
	FUNC6(nsproxy->mnt_ns);
	nsproxy->mnt_ns = mnt_ns;

	/* Find the root */
	root.mnt    = mnt_ns->root;
	root.dentry = mnt_ns->root->mnt_root;
	FUNC4(&root);
	while(FUNC1(root.dentry) && FUNC2(&root))
		;

	/* Update the pwd and root */
	FUNC7(fs, &root);
	FUNC8(fs, &root);

	FUNC5(&root);
	return 0;
}