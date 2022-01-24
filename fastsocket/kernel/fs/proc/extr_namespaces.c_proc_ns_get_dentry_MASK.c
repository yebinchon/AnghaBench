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
struct task_struct {int dummy; } ;
struct super_block {int dummy; } ;
struct qstr {char* name; } ;
struct proc_ns_operations {int /*<<< orphan*/  (* put ) (void*) ;int /*<<< orphan*/  (* inum ) (void*) ;void* (* get ) (struct task_struct*) ;} ;
struct proc_inode {void* ns; struct proc_ns_operations const* ns_ops; } ;
struct inode {int i_state; int i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int I_NEW ; 
 struct proc_inode* FUNC1 (struct inode*) ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 struct dentry* FUNC2 (struct super_block*,struct qstr*) ; 
 struct dentry* FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_dentry_operations ; 
 int /*<<< orphan*/  ns_file_operations ; 
 int /*<<< orphan*/  ns_inode_operations ; 
 void* FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC12(struct super_block *sb,
	struct task_struct *task, const struct proc_ns_operations *ns_ops)
{
	struct dentry *dentry, *result;
	struct inode *inode;
	struct proc_inode *ei;
	struct qstr qname = { .name = "", };
	void *ns;

	ns = ns_ops->get(task);
	if (!ns)
		return FUNC0(-ENOENT);

	dentry = FUNC2(sb, &qname);
	if (!dentry) {
		ns_ops->put(ns);
		return FUNC0(-ENOMEM);
	}

	inode = FUNC5(sb, ns_ops->inum(ns));
	if (!inode) {
		FUNC4(dentry);
		ns_ops->put(ns);
		return FUNC0(-ENOMEM);
	}

	ei = FUNC1(inode);
	if (inode->i_state & I_NEW) {
		inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
		inode->i_op = &ns_inode_operations;
		inode->i_mode = S_IFREG | S_IRUGO;
		inode->i_fop = &ns_file_operations;
		ei->ns_ops = ns_ops;
		ei->ns = ns;
		FUNC11(inode);
	} else {
		ns_ops->put(ns);
	}

	dentry->d_op = &ns_dentry_operations;
	result = FUNC3(dentry, inode);
	if (result) {
		FUNC4(dentry);
		dentry = result;
	}

	return dentry;
}