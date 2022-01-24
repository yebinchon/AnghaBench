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
struct printk_map {int /*<<< orphan*/  addr; int /*<<< orphan*/  printk; } ;
struct printk_list {struct printk_list* next; int /*<<< orphan*/  addr; int /*<<< orphan*/  printk; } ;
struct pevent {int printk_count; struct printk_list* printklist; struct printk_map* printk_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct printk_list*) ; 
 struct printk_map* FUNC1 (int) ; 
 int /*<<< orphan*/  printk_cmp ; 
 int /*<<< orphan*/  FUNC2 (struct printk_map*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pevent *pevent)
{
	struct printk_list *printklist;
	struct printk_list *item;
	struct printk_map *printk_map;
	int i;

	printk_map = FUNC1(sizeof(*printk_map) * (pevent->printk_count + 1));
	if (!printk_map)
		return -1;

	printklist = pevent->printklist;

	i = 0;
	while (printklist) {
		printk_map[i].printk = printklist->printk;
		printk_map[i].addr = printklist->addr;
		i++;
		item = printklist;
		printklist = printklist->next;
		FUNC0(item);
	}

	FUNC2(printk_map, pevent->printk_count, sizeof(*printk_map), printk_cmp);

	pevent->printk_map = printk_map;
	pevent->printklist = NULL;

	return 0;
}