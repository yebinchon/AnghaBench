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
struct vm_area_struct {int /*<<< orphan*/  vm_rb; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mm_rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 

void FUNC2(struct mm_struct *mm, struct vm_area_struct *vma,
		struct rb_node **rb_link, struct rb_node *rb_parent)
{
	FUNC1(&vma->vm_rb, rb_parent, rb_link);
	FUNC0(&vma->vm_rb, &mm->mm_rb);
}