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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {int f_pos; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
struct ctl_table_header {struct ctl_table* attached_by; struct ctl_table* attached_to; struct ctl_table* ctl_table; } ;
struct ctl_table {struct ctl_table* child; } ;
typedef  scalar_t__ (* filldir_t ) (void*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_4__ {struct ctl_table* sysctl_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ctl_table_header*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ctl_table_header* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int FUNC6 (struct ctl_table_header*,struct ctl_table*,unsigned long*,struct file*,void*,scalar_t__ (*) (void*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_table_header*) ; 
 struct ctl_table_header* FUNC8 (struct ctl_table_header*) ; 

__attribute__((used)) static int FUNC9(struct file *filp, void *dirent, filldir_t filldir)
{
	struct dentry *dentry = filp->f_path.dentry;
	struct inode *inode = dentry->d_inode;
	struct ctl_table_header *head = FUNC4(inode);
	struct ctl_table *table = FUNC1(inode)->sysctl_entry;
	struct ctl_table_header *h = NULL;
	unsigned long pos;
	int ret = -EINVAL;

	if (FUNC0(head))
		return FUNC2(head);

	if (table && !table->child) {
		FUNC3(1);
		goto out;
	}

	table = table ? table->child : head->ctl_table;

	ret = 0;
	/* Avoid a switch here: arm builds fail with missing __cmpdi2 */
	if (filp->f_pos == 0) {
		if (filldir(dirent, ".", 1, filp->f_pos,
				inode->i_ino, DT_DIR) < 0)
			goto out;
		filp->f_pos++;
	}
	if (filp->f_pos == 1) {
		if (filldir(dirent, "..", 2, filp->f_pos,
				FUNC5(dentry), DT_DIR) < 0)
			goto out;
		filp->f_pos++;
	}
	pos = 2;

	ret = FUNC6(head, table, &pos, filp, dirent, filldir);
	if (ret)
		goto out;

	for (h = FUNC8(NULL); h; h = FUNC8(h)) {
		if (h->attached_to != table)
			continue;
		ret = FUNC6(h, h->attached_by, &pos, filp, dirent, filldir);
		if (ret) {
			FUNC7(h);
			break;
		}
	}
	ret = 1;
out:
	FUNC7(head);
	return ret;
}