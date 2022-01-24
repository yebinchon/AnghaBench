#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct inode {int dummy; } ;
struct dentry {TYPE_3__* d_op; TYPE_1__* d_inode; } ;
struct cifs_fattr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* d_hash ) (struct dentry*,struct qstr*) ;} ;
struct TYPE_6__ {scalar_t__ nocase; } ;
struct TYPE_5__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ cifs_ci_dentry_ops ; 
 TYPE_3__ cifs_dentry_ops ; 
 struct inode* FUNC3 (struct super_block*,struct cifs_fattr*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct dentry* FUNC7 (struct dentry*,struct qstr*) ; 
 struct dentry* FUNC8 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,struct qstr*) ; 

__attribute__((used)) static struct dentry *
FUNC12(struct dentry *parent, struct qstr *name,
		    struct cifs_fattr *fattr)
{
	struct dentry *dentry, *alias;
	struct inode *inode;
	struct super_block *sb = parent->d_inode->i_sb;

	FUNC2(1, "For %s", name->name);

	if (parent->d_op && parent->d_op->d_hash)
		parent->d_op->d_hash(parent, name);
	else
		name->hash = FUNC10(name->name, name->len);

	dentry = FUNC7(parent, name);
	if (dentry) {
		/* FIXME: check for inode number changes? */
		if (dentry->d_inode != NULL)
			return dentry;
		FUNC6(dentry);
		FUNC9(dentry);
	}

	dentry = FUNC5(parent, name);
	if (dentry == NULL)
		return NULL;

	inode = FUNC3(sb, fattr);
	if (!inode) {
		FUNC9(dentry);
		return NULL;
	}

	if (FUNC4(FUNC0(sb))->nocase)
		dentry->d_op = &cifs_ci_dentry_ops;
	else
		dentry->d_op = &cifs_dentry_ops;

	alias = FUNC8(dentry, inode);
	if (alias != NULL) {
		FUNC9(dentry);
		if (FUNC1(alias))
			return NULL;
		dentry = alias;
	}

	return dentry;
}