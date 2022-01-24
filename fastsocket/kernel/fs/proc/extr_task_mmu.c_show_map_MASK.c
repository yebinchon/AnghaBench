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
struct vm_area_struct {int /*<<< orphan*/  vm_start; } ;
struct task_struct {int /*<<< orphan*/  mm; } ;
struct seq_file {scalar_t__ count; scalar_t__ size; int /*<<< orphan*/  version; struct proc_maps_private* private; } ;
struct proc_maps_private {struct task_struct* task; } ;

/* Variables and functions */
 struct vm_area_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	struct vm_area_struct *vma = v;
	struct proc_maps_private *priv = m->private;
	struct task_struct *task = priv->task;

	FUNC1(m, vma);

	if (m->count < m->size)  /* vma is copied successfully */
		m->version = (vma != FUNC0(task->mm))
			? vma->vm_start : 0;
	return 0;
}