#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file {TYPE_2__* f_op; } ;
struct TYPE_6__ {TYPE_1__* mm; } ;
struct TYPE_5__ {unsigned long (* get_unmapped_area ) (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ;} ;
struct TYPE_4__ {unsigned long (* get_unmapped_exec_area ) (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ;unsigned long (* get_unmapped_area ) (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ;} ;

/* Variables and functions */
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long PAGE_MASK ; 
 unsigned long TASK_SIZE ; 
 unsigned long FUNC1 (unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 TYPE_3__* current ; 

unsigned long
FUNC3(struct file *file, unsigned long addr, unsigned long len,
		unsigned long pgoff, unsigned long flags, int exec)
{
	unsigned long (*get_area)(struct file *, unsigned long,
				  unsigned long, unsigned long, unsigned long);

	unsigned long error = FUNC1(addr, len, flags);
	if (error)
		return error;

	/* Careful about overflows.. */
	if (len > TASK_SIZE)
		return -ENOMEM;

	if (exec && current->mm->get_unmapped_exec_area)
		get_area = current->mm->get_unmapped_exec_area;
	else
		get_area = current->mm->get_unmapped_area;

	if (file && file->f_op && file->f_op->get_unmapped_area)
		get_area = file->f_op->get_unmapped_area;
	addr = get_area(file, addr, len, pgoff, flags);
	if (FUNC0(addr))
		return addr;

	if (addr > TASK_SIZE - len)
		return -ENOMEM;
	if (addr & ~PAGE_MASK)
		return -EINVAL;

	return FUNC2(addr, len);
}