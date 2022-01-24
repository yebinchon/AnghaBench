#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; TYPE_4__* d_parent; int /*<<< orphan*/  d_count; struct inode* d_inode; } ;
struct TYPE_10__ {int (* rename ) (struct inode*,TYPE_2__*,struct inode*,TYPE_2__*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 TYPE_6__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFS ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC3 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct inode*,struct dentry*) ; 
 int FUNC17 (struct inode*,TYPE_2__*,struct inode*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC18(struct inode *old_dir, struct dentry *old_dentry,
		      struct inode *new_dir, struct dentry *new_dentry)
{
	struct inode *old_inode = old_dentry->d_inode;
	struct inode *new_inode = new_dentry->d_inode;
	struct dentry *dentry = NULL, *rehash = NULL;
	int error = -EBUSY;

	FUNC8(VFS, "NFS: rename(%s/%s -> %s/%s, ct=%d)\n",
		 old_dentry->d_parent->d_name.name, old_dentry->d_name.name,
		 new_dentry->d_parent->d_name.name, new_dentry->d_name.name,
		 FUNC2(&new_dentry->d_count));

	/*
	 * For non-directories, check whether the target is busy and if so,
	 * make a copy of the dentry and then do a silly-rename. If the
	 * silly-rename succeeds, the copied dentry is hashed and becomes
	 * the new target.
	 */
	if (new_inode && !FUNC1(new_inode->i_mode)) {
		/*
		 * To prevent any new references to the target during the
		 * rename, we unhash the dentry in advance.
		 */
		if (!FUNC7(new_dentry)) {
			FUNC4(new_dentry);
			rehash = new_dentry;
		}

		if (FUNC2(&new_dentry->d_count) > 2) {
			int err;

			/* copy the target dentry's name */
			dentry = FUNC3(new_dentry->d_parent,
					 &new_dentry->d_name);
			if (!dentry)
				goto out;

			/* silly-rename the existing target ... */
			err = FUNC16(new_dir, new_dentry);
			if (err)
				goto out;

			new_dentry = dentry;
			rehash = NULL;
			new_inode = NULL;
		}
	}

	FUNC12(old_inode);
	if (new_inode != NULL)
		FUNC12(new_inode);

	error = FUNC0(old_dir)->rename(old_dir, &old_dentry->d_name,
					   new_dir, &new_dentry->d_name);
	FUNC13(old_inode);
out:
	if (rehash)
		FUNC6(rehash);
	if (!error) {
		if (new_inode != NULL)
			FUNC11(new_inode);
		FUNC5(old_dentry, new_dentry);
		FUNC15(new_dentry,
					FUNC14(new_dir));
	} else if (error == -ENOENT)
		FUNC10(old_dentry);

	/* new dentry created? */
	if (dentry)
		FUNC9(dentry);
	return error;
}