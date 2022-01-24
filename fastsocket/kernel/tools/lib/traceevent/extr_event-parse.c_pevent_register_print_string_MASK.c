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
struct printk_list {unsigned long long addr; int /*<<< orphan*/  printk; struct printk_list* next; } ;
struct pevent {int /*<<< orphan*/  printk_count; struct printk_list* printklist; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct printk_list*) ; 
 struct printk_list* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct pevent *pevent, char *fmt,
				 unsigned long long addr)
{
	struct printk_list *item = FUNC1(sizeof(*item));

	if (!item)
		return -1;

	item->next = pevent->printklist;
	item->addr = addr;

	item->printk = FUNC2(fmt);
	if (!item->printk)
		goto out_free;

	pevent->printklist = item;
	pevent->printk_count++;

	return 0;

out_free:
	FUNC0(item);
	errno = ENOMEM;
	return -1;
}