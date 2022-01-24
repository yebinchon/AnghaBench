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
struct task_struct {int /*<<< orphan*/  comm; } ;
struct seq_file {struct inode* private; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ESRCH ; 
 struct task_struct* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, void *v)
{
	struct inode *inode = m->private;
	struct task_struct *p;

	p = FUNC0(inode);
	if (!p)
		return -ESRCH;

	FUNC3(p);
	FUNC2(m, "%s\n", p->comm);
	FUNC4(p);

	FUNC1(p);

	return 0;
}