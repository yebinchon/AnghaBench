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
struct list_head {int dummy; } ;
struct kcore_list {unsigned long addr; unsigned long size; int /*<<< orphan*/  list; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KCORE_RAM ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long ULONG_MAX ; 
 unsigned long VMALLOC_START ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct kcore_list*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct kcore_list*) ; 
 struct kcore_list* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(unsigned long pfn, unsigned long nr_pages, void *arg)
{
	struct list_head *head = (struct list_head *)arg;
	struct kcore_list *ent;

	ent = FUNC3(sizeof(*ent), GFP_KERNEL);
	if (!ent)
		return -ENOMEM;
	ent->addr = (unsigned long)FUNC0((pfn << PAGE_SHIFT));
	ent->size = nr_pages << PAGE_SHIFT;

	/* Sanity check: Can happen in 32bit arch...maybe */
	if (ent->addr < (unsigned long) FUNC0(0))
		goto free_out;

	/* cut not-mapped area. ....from ppc-32 code. */
	if (ULONG_MAX - ent->addr < ent->size)
		ent->size = ULONG_MAX - ent->addr;

	/* cut when vmalloc() area is higher than direct-map area */
	if (VMALLOC_START > (unsigned long)FUNC0(0)) {
		if (ent->addr > VMALLOC_START)
			goto free_out;
		if (VMALLOC_START - ent->addr < ent->size)
			ent->size = VMALLOC_START - ent->addr;
	}

	ent->type = KCORE_RAM;
	FUNC4(&ent->list, head);

	if (!FUNC1(ent, head)) {
		FUNC5(&ent->list);
		goto free_out;
	}

	return 0;
free_out:
	FUNC2(ent);
	return 1;
}