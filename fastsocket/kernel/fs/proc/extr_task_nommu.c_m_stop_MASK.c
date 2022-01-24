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
struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {TYPE_1__* task; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m, void *_vml)
{
	struct proc_maps_private *priv = m->private;

	if (priv->task) {
		struct mm_struct *mm = priv->task->mm;
		FUNC2(&mm->mmap_sem);
		FUNC0(mm);
		FUNC1(priv->task);
	}
}