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
struct proc_dir_entry {int /*<<< orphan*/  read_proc; void* data; } ;
struct irq_desc {scalar_t__ dir; int /*<<< orphan*/ * chip; } ;

/* Variables and functions */
 int MAX_NAMELEN ; 
 struct proc_dir_entry* FUNC0 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  irq_affinity_hint_proc_fops ; 
 int /*<<< orphan*/  irq_affinity_list_proc_fops ; 
 int /*<<< orphan*/  irq_affinity_proc_fops ; 
 int /*<<< orphan*/  irq_node_proc_fops ; 
 int /*<<< orphan*/  irq_spurious_read ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  no_irq_chip ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  root_irq_dir ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 

void FUNC5(unsigned int irq, struct irq_desc *desc)
{
	char name [MAX_NAMELEN];
	struct proc_dir_entry *entry;

	if (!root_irq_dir || (desc->chip == &no_irq_chip) || desc->dir)
		return;

	FUNC1(name, 0, MAX_NAMELEN);
	FUNC4(name, "%d", irq);

	/* create /proc/irq/1234 */
	desc->dir = FUNC3(name, root_irq_dir);

#ifdef CONFIG_SMP
	/* create /proc/irq/<irq>/smp_affinity */
	proc_create_data("smp_affinity", 0600, desc->dir,
			 &irq_affinity_proc_fops, (void *)(long)irq);

	/* create /proc/irq/<irq>/affinity_hint */
	proc_create_data("affinity_hint", 0400, desc->dir,
			 &irq_affinity_hint_proc_fops, (void *)(long)irq);

	/* create /proc/irq/<irq>/smp_affinity_list */
	proc_create_data("smp_affinity_list", 0600, desc->dir,
			 &irq_affinity_list_proc_fops, (void *)(long)irq);

	proc_create_data("node", 0444, desc->dir,
			 &irq_node_proc_fops, (void *)(long)irq);
#endif

	entry = FUNC0("spurious", 0444, desc->dir);
	if (entry) {
		entry->data = (void *)(long)irq;
		entry->read_proc = irq_spurious_read;
	}
}