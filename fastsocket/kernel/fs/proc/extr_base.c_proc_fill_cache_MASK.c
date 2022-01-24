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
struct task_struct {int dummy; } ;
struct qstr {char const* name; int len; int /*<<< orphan*/  hash; } ;
struct inode {int i_ino; int i_mode; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int /*<<< orphan*/  f_pos; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef  struct dentry* (* instantiate_t ) (struct inode*,struct dentry*,struct task_struct*,void const*) ;
typedef  int ino_t ;
typedef  int (* filldir_t ) (void*,char const*,int,int /*<<< orphan*/ ,int,unsigned int) ;

/* Variables and functions */
 unsigned int DT_UNKNOWN ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*,struct qstr*) ; 
 struct dentry* FUNC2 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 

int FUNC6(struct file *filp, void *dirent, filldir_t filldir,
	const char *name, int len,
	instantiate_t instantiate, struct task_struct *task, const void *ptr)
{
	struct dentry *child, *dir = filp->f_path.dentry;
	struct inode *inode;
	struct qstr qname;
	ino_t ino = 0;
	unsigned type = DT_UNKNOWN;

	qname.name = name;
	qname.len  = len;
	qname.hash = FUNC5(name, len);

	child = FUNC2(dir, &qname);
	if (!child) {
		struct dentry *new;
		new = FUNC1(dir, &qname);
		if (new) {
			child = instantiate(dir->d_inode, new, task, ptr);
			if (child)
				FUNC3(new);
			else
				child = new;
		}
	}
	if (!child || FUNC0(child) || !child->d_inode)
		goto end_instantiate;
	inode = child->d_inode;
	if (inode) {
		ino = inode->i_ino;
		type = inode->i_mode >> 12;
	}
	FUNC3(child);
end_instantiate:
	if (!ino)
		ino = FUNC4(dir, &qname);
	if (!ino)
		ino = 1;
	return filldir(dirent, name, len, filp->f_pos, ino, type);
}