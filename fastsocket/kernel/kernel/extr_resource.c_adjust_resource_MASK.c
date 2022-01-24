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
struct resource {scalar_t__ start; scalar_t__ end; struct resource* sibling; struct resource* child; struct resource* parent; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  resource_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct resource *res, resource_size_t start, resource_size_t size)
{
	struct resource *tmp, *parent = res->parent;
	resource_size_t end = start + size - 1;
	int result = -EBUSY;

	FUNC0(&resource_lock);

	if ((start < parent->start) || (end > parent->end))
		goto out;

	for (tmp = res->child; tmp; tmp = tmp->sibling) {
		if ((tmp->start < start) || (tmp->end > end))
			goto out;
	}

	if (res->sibling && (res->sibling->start <= end))
		goto out;

	tmp = parent->child;
	if (tmp != res) {
		while (tmp->sibling != res)
			tmp = tmp->sibling;
		if (start <= tmp->end)
			goto out;
	}

	res->start = start;
	res->end = end;
	result = 0;

 out:
	FUNC1(&resource_lock);
	return result;
}