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
struct seq_operations {int dummy; } ;
struct path {int dummy; } ;
struct TYPE_2__ {struct proc_mounts* private; } ;
struct proc_mounts {int /*<<< orphan*/  event; struct path root; struct mnt_namespace* ns; TYPE_1__ m; } ;
struct nsproxy {struct mnt_namespace* mnt_ns; } ;
struct mnt_namespace {int /*<<< orphan*/  event; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct task_struct*,struct path*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mnt_namespace*) ; 
 struct task_struct* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc_mounts*) ; 
 struct proc_mounts* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (struct mnt_namespace*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct file*,struct seq_operations const*) ; 
 struct nsproxy* FUNC11 (struct task_struct*) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, struct file *file,
			      const struct seq_operations *op)
{
	struct task_struct *task = FUNC2(inode);
	struct nsproxy *nsp;
	struct mnt_namespace *ns = NULL;
	struct path root;
	struct proc_mounts *p;
	int ret = -EINVAL;

	if (task) {
		FUNC8();
		nsp = FUNC11(task);
		if (nsp) {
			ns = nsp->mnt_ns;
			if (ns)
				FUNC1(ns);
		}
		FUNC9();
		if (ns && FUNC0(task, &root, 1) == 0)
			ret = 0;
		FUNC7(task);
	}

	if (!ns)
		goto err;
	if (ret)
		goto err_put_ns;

	ret = -ENOMEM;
	p = FUNC4(sizeof(struct proc_mounts), GFP_KERNEL);
	if (!p)
		goto err_put_path;

	file->private_data = &p->m;
	ret = FUNC10(file, op);
	if (ret)
		goto err_free;

	p->m.private = p;
	p->ns = ns;
	p->root = root;
	p->event = ns->event;

	return 0;

 err_free:
	FUNC3(p);
 err_put_path:
	FUNC5(&root);
 err_put_ns:
	FUNC6(ns);
 err:
	return ret;
}