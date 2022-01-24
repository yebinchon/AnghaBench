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
struct qstr {int len; char* name; int /*<<< orphan*/  hash; } ;
struct nfs_entry {int len; char* name; int /*<<< orphan*/  fattr; int /*<<< orphan*/  fh; } ;
struct inode {int /*<<< orphan*/  d_sb; int /*<<< orphan*/  d_op; struct inode* d_inode; } ;
struct dentry {int /*<<< orphan*/  d_sb; int /*<<< orphan*/  d_op; struct dentry* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct inode*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*,struct qstr*) ; 
 struct inode* FUNC5 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct inode*,struct nfs_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC13(struct dentry *parent, struct nfs_entry *entry)
{
	struct qstr filename = {
		.len = entry->len,
		.name = entry->name,
	};
	struct dentry *dentry;
	struct dentry *alias;
	struct inode *dir = parent->d_inode;
	struct inode *inode;

	if (filename.name[0] == '.') {
		if (filename.len == 1)
			return;
		if (filename.len == 2 && filename.name[1] == '.')
			return;
	}
	filename.hash = FUNC7(filename.name, filename.len);

	dentry = FUNC4(parent, &filename);
	if (dentry != NULL) {
		if (FUNC10(dentry, entry)) {
			FUNC12(dentry, FUNC11(dir));
			FUNC9(dentry->d_inode, entry->fattr);
			goto out;
		} else {
			FUNC3(dentry);
			FUNC6(dentry);
		}
	}

	dentry = FUNC2(parent, &filename);
	if (dentry == NULL)
		return;

	dentry->d_op = FUNC1(dir)->dentry_ops;
	inode = FUNC8(dentry->d_sb, entry->fh, entry->fattr);
	if (FUNC0(inode))
		goto out;

	alias = FUNC5(dentry, inode);
	if (FUNC0(alias))
		goto out;
	else if (alias) {
		FUNC12(alias, FUNC11(dir));
		FUNC6(alias);
	} else
		FUNC12(dentry, FUNC11(dir));

out:
	FUNC6(dentry);
}