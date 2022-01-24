#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rpc_filelist {int /*<<< orphan*/  name; } ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct inode {int i_mode; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  S_IFDIR 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dentry *parent,
			     const struct rpc_filelist *files,
			     int start, int eof)
{
	struct inode *dir = parent->d_inode;
	struct dentry *dentry;
	struct qstr name;
	int i;

	for (i = start; i < eof; i++) {
		name.name = files[i].name;
		name.len = FUNC6(files[i].name);
		name.hash = FUNC5(name.name, name.len);
		dentry = FUNC3(parent, &name);

		if (dentry == NULL)
			continue;
		if (dentry->d_inode == NULL)
			goto next;
		switch (dentry->d_inode->i_mode & S_IFMT) {
			default:
				FUNC0();
			case S_IFREG:
				FUNC2(dir, dentry);
				break;
			case S_IFDIR:
				FUNC1(dir, dentry);
		}
next:
		FUNC4(dentry);
	}
}