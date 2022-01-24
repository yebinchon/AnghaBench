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
struct qstr {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/ * d_op; struct qstr d_name; } ;
struct ctl_table_header {struct ctl_table* attached_by; struct ctl_table* attached_to; struct ctl_table* ctl_table; } ;
struct ctl_table {struct ctl_table* child; } ;
struct TYPE_2__ {struct ctl_table* sysctl_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (struct ctl_table_header*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ctl_table_header*) ; 
 TYPE_1__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 struct ctl_table* FUNC6 (struct ctl_table*,struct qstr*) ; 
 struct ctl_table_header* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  proc_sys_dentry_operations ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,struct ctl_table_header*,struct ctl_table*) ; 
 int /*<<< orphan*/  FUNC9 (struct ctl_table_header*) ; 
 struct ctl_table_header* FUNC10 (struct ctl_table_header*) ; 

__attribute__((used)) static struct dentry *FUNC11(struct inode *dir, struct dentry *dentry,
					struct nameidata *nd)
{
	struct ctl_table_header *head = FUNC7(dir);
	struct ctl_table *table = FUNC3(dir)->sysctl_entry;
	struct ctl_table_header *h = NULL;
	struct qstr *name = &dentry->d_name;
	struct ctl_table *p;
	struct inode *inode;
	struct dentry *err = FUNC1(-ENOENT);

	if (FUNC2(head))
		return FUNC0(head);

	if (table && !table->child) {
		FUNC4(1);
		goto out;
	}

	table = table ? table->child : head->ctl_table;

	p = FUNC6(table, name);
	if (!p) {
		for (h = FUNC10(NULL); h; h = FUNC10(h)) {
			if (h->attached_to != table)
				continue;
			p = FUNC6(h->attached_by, name);
			if (p)
				break;
		}
	}

	if (!p)
		goto out;

	err = FUNC1(-ENOMEM);
	inode = FUNC8(dir->i_sb, h ? h : head, p);
	if (h)
		FUNC9(h);

	if (!inode)
		goto out;

	err = NULL;
	dentry->d_op = &proc_sys_dentry_operations;
	FUNC5(dentry, inode);

out:
	FUNC9(head);
	return err;
}