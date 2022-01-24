#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct vm_area_struct* head; int /*<<< orphan*/  list; int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {TYPE_1__ vm_set; } ;
struct vm_area_struct {TYPE_2__ shared; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(struct vm_area_struct *vma, struct vm_area_struct *old)
{
	/* Leave these BUG_ONs till prio_tree patch stabilizes */
	FUNC0(FUNC3(vma) != FUNC3(old));
	FUNC0(FUNC1(vma) != FUNC1(old));

	vma->shared.vm_set.head = NULL;
	vma->shared.vm_set.parent = NULL;

	if (!old->shared.vm_set.parent)
		FUNC4(&vma->shared.vm_set.list,
				&old->shared.vm_set.list);
	else if (old->shared.vm_set.head)
		FUNC5(&vma->shared.vm_set.list,
				&old->shared.vm_set.head->shared.vm_set.list);
	else {
		FUNC2(&vma->shared.vm_set.list);
		vma->shared.vm_set.head = old;
		old->shared.vm_set.head = vma;
	}
}