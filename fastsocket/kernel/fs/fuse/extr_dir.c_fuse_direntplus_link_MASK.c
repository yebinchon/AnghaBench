#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct qstr {int len; char* name; int /*<<< orphan*/  hash; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_sb; } ;
struct fuse_inode {int /*<<< orphan*/  nlookup; } ;
struct TYPE_5__ {int mode; } ;
struct fuse_entry_out {scalar_t__ nodeid; TYPE_2__ attr; int /*<<< orphan*/  generation; } ;
struct fuse_dirent {int namelen; char* name; } ;
struct fuse_direntplus {struct fuse_dirent dirent; struct fuse_entry_out entry_out; } ;
struct fuse_conn {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int /*<<< orphan*/ * d_op; struct inode* d_inode; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int S_IFMT ; 
 struct dentry* FUNC2 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct fuse_entry_out*) ; 
 int /*<<< orphan*/  fuse_dentry_operations ; 
 struct inode* FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC12 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct fuse_conn* FUNC14 (struct inode*) ; 
 struct fuse_inode* FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct file *file,
				struct fuse_direntplus *direntplus,
				u64 attr_version)
{
	int err;
	struct fuse_entry_out *o = &direntplus->entry_out;
	struct fuse_dirent *dirent = &direntplus->dirent;
	struct dentry *parent = file->f_path.dentry;
	struct qstr name = { .len = dirent->namelen, .name = dirent->name };
	struct dentry *dentry;
	struct dentry *alias;
	struct inode *dir = parent->d_inode;
	struct fuse_conn *fc;
	struct inode *inode;

	if (!o->nodeid) {
		/*
		 * Unlike in the case of fuse_lookup, zero nodeid does not mean
		 * ENOENT. Instead, it only means the userspace filesystem did
		 * not want to return attributes/handle for this entry.
		 *
		 * So do nothing.
		 */
		return 0;
	}

	if (name.name[0] == '.') {
		/*
		 * We could potentially refresh the attributes of the directory
		 * and its parent?
		 */
		if (name.len == 1)
			return 0;
		if (name.name[1] == '.' && name.len == 2)
			return 0;
	}

	if (FUNC17(o->nodeid))
		return -EIO;
	if (!FUNC13(o->attr.mode))
		return -EIO;

	fc = FUNC14(dir);

	name.hash = FUNC8(name.name, name.len);
	dentry = FUNC5(parent, &name);
	if (dentry) {
		inode = dentry->d_inode;
		if (!inode) {
			FUNC3(dentry);
		} else if (FUNC16(inode) != o->nodeid ||
			   ((o->attr.mode ^ inode->i_mode) & S_IFMT)) {
			err = FUNC4(dentry);
			if (err)
				goto out;
		} else if (FUNC18(inode)) {
			err = -EIO;
			goto out;
		} else {
			struct fuse_inode *fi;
			fi = FUNC15(inode);
			FUNC19(&fc->lock);
			fi->nlookup++;
			FUNC20(&fc->lock);

			FUNC9(inode, &o->attr,
					       FUNC7(o),
					       attr_version);

			/*
			 * The other branch to 'found' comes via fuse_iget()
			 * which bumps nlookup inside
			 */
			goto found;
		}
		FUNC6(dentry);
	}

	dentry = FUNC2(parent, &name);
	err = -ENOMEM;
	if (!dentry)
		goto out;
	dentry->d_op = &fuse_dentry_operations;

	inode = FUNC11(dir->i_sb, o->nodeid, o->generation,
			  &o->attr, FUNC7(o), attr_version);
	if (!inode)
		goto out;

	alias = FUNC12(dentry, inode);
	err = FUNC1(alias);
	if (FUNC0(alias))
		goto out;

	if (alias) {
		FUNC6(dentry);
		dentry = alias;
	}

found:
	FUNC10(dentry, o);

	err = 0;
out:
	FUNC6(dentry);
	return err;
}