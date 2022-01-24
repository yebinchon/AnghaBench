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
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int /*<<< orphan*/  f_pos; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/ * d_op; int /*<<< orphan*/  d_sb; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int /*<<< orphan*/  procname; } ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int /*<<< orphan*/  (* filldir_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ;

/* Variables and functions */
 unsigned int DT_UNKNOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC1 (struct dentry*,struct qstr*) ; 
 struct dentry* FUNC2 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_sys_dentry_operations ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,struct ctl_table_header*,struct ctl_table*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *filp, void *dirent,
				filldir_t filldir,
				struct ctl_table_header *head,
				struct ctl_table *table)
{
	struct dentry *child, *dir = filp->f_path.dentry;
	struct inode *inode;
	struct qstr qname;
	ino_t ino = 0;
	unsigned type = DT_UNKNOWN;

	qname.name = table->procname;
	qname.len  = FUNC6(table->procname);
	qname.hash = FUNC4(qname.name, qname.len);

	child = FUNC2(dir, &qname);
	if (!child) {
		child = FUNC1(dir, &qname);
		if (child) {
			inode = FUNC5(dir->d_sb, head, table);
			if (!inode) {
				FUNC3(child);
				return -ENOMEM;
			} else {
				child->d_op = &proc_sys_dentry_operations;
				FUNC0(child, inode);
			}
		} else {
			return -ENOMEM;
		}
	}
	inode = child->d_inode;
	ino  = inode->i_ino;
	type = inode->i_mode >> 12;
	FUNC3(child);
	return !!filldir(dirent, qname.name, qname.len, filp->f_pos, ino, type);
}