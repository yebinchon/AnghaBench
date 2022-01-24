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
struct vfsmount {struct mnt_namespace* mnt_ns; int /*<<< orphan*/  mnt_list; int /*<<< orphan*/  mnt_root; } ;
struct mnt_namespace {struct vfsmount* root; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {struct vfsmount* mnt; } ;
struct TYPE_3__ {struct vfsmount* mnt; } ;
struct fs_struct {TYPE_2__ pwd; TYPE_1__ root; } ;

/* Variables and functions */
 int CL_COPY_ALL ; 
 int CL_EXPIRE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mnt_namespace* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mnt_namespace*) ; 
 struct mnt_namespace* FUNC2 () ; 
 struct vfsmount* FUNC3 (struct vfsmount*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mnt_namespace*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC8 (struct vfsmount*) ; 
 int /*<<< orphan*/  namespace_sem ; 
 struct vfsmount* FUNC9 (struct vfsmount*,struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

__attribute__((used)) static struct mnt_namespace *FUNC13(struct mnt_namespace *mnt_ns,
		struct fs_struct *fs)
{
	struct mnt_namespace *new_ns;
	struct vfsmount *rootmnt = NULL, *pwdmnt = NULL;
	struct vfsmount *p, *q;

	new_ns = FUNC2();
	if (FUNC1(new_ns))
		return new_ns;

	FUNC4(&namespace_sem);
	/* First pass: copy the tree topology */
	new_ns->root = FUNC3(mnt_ns->root, mnt_ns->root->mnt_root,
					CL_COPY_ALL | CL_EXPIRE);
	if (!new_ns->root) {
		FUNC12(&namespace_sem);
		FUNC5(mnt_ns);
		return FUNC0(-ENOMEM);
	}
	FUNC10(&vfsmount_lock);
	FUNC6(&new_ns->list, &new_ns->root->mnt_list);
	FUNC11(&vfsmount_lock);

	/*
	 * Second pass: switch the tsk->fs->* elements and mark new vfsmounts
	 * as belonging to new namespace.  We have already acquired a private
	 * fs_struct, so tsk->fs->lock is not needed.
	 */
	p = mnt_ns->root;
	q = new_ns->root;
	while (p) {
		q->mnt_ns = new_ns;
		if (fs) {
			if (p == fs->root.mnt) {
				rootmnt = p;
				fs->root.mnt = FUNC7(q);
			}
			if (p == fs->pwd.mnt) {
				pwdmnt = p;
				fs->pwd.mnt = FUNC7(q);
			}
		}
		p = FUNC9(p, mnt_ns->root);
		q = FUNC9(q, new_ns->root);
	}
	FUNC12(&namespace_sem);

	if (rootmnt)
		FUNC8(rootmnt);
	if (pwdmnt)
		FUNC8(pwdmnt);

	return new_ns;
}