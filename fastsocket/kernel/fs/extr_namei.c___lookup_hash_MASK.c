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
struct qstr {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {TYPE_2__* i_op; } ;
struct dentry {TYPE_1__* d_op; struct inode* d_inode; } ;
struct TYPE_4__ {struct dentry* (* lookup ) (struct inode*,struct dentry*,struct nameidata*) ;} ;
struct TYPE_3__ {int (* d_hash ) (struct dentry*,struct qstr*) ;scalar_t__ d_revalidate; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct dentry* FUNC2 (struct dentry*,struct qstr*) ; 
 struct dentry* FUNC3 (struct dentry*,struct qstr*) ; 
 struct dentry* FUNC4 (struct dentry*,struct qstr*) ; 
 struct dentry* FUNC5 (struct dentry*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (struct dentry*,struct qstr*) ; 
 struct dentry* FUNC8 (struct inode*,struct dentry*,struct nameidata*) ; 

__attribute__((used)) static struct dentry *FUNC9(struct qstr *name,
		struct dentry *base, struct nameidata *nd)
{
	struct dentry *dentry;
	struct inode *inode;
	int err;

	inode = base->d_inode;

	/*
	 * See if the low-level filesystem might want
	 * to use its own hash..
	 */
	if (base->d_op && base->d_op->d_hash) {
		err = base->d_op->d_hash(base, name);
		dentry = FUNC0(err);
		if (err < 0)
			goto out;
	}

	dentry = FUNC2(base, name);

	/* lockess __d_lookup may fail due to concurrent d_move()
	 * in some unrelated directory, so try with d_lookup
	 */
	if (!dentry)
		dentry = FUNC4(base, name);

	if (dentry && dentry->d_op && dentry->d_op->d_revalidate)
		dentry = FUNC5(dentry, nd);


	if (!dentry) {
		struct dentry *new;

		/* Don't create child dentry for a dead directory. */
		dentry = FUNC0(-ENOENT);
		if (FUNC1(inode))
			goto out;

		new = FUNC3(base, name);
		dentry = FUNC0(-ENOMEM);
		if (!new)
			goto out;
		dentry = inode->i_op->lookup(inode, new, nd);
		if (!dentry)
			dentry = new;
		else
			FUNC6(new);
	}
out:
	return dentry;
}