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
struct TYPE_2__ {struct TYPE_2__* next; } ;
struct pernet_operations {TYPE_1__ list; } ;

/* Variables and functions */
 TYPE_1__* first_device ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  net_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct pernet_operations*) ; 

void FUNC3(struct pernet_operations *ops)
{
	FUNC0(&net_mutex);
	if (&ops->list == first_device)
		first_device = first_device->next;
	FUNC2(ops);
	FUNC1(&net_mutex);
}