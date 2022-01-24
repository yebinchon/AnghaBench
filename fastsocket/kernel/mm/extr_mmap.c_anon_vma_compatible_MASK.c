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
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; scalar_t__ vm_file; int vm_flags; scalar_t__ vm_pgoff; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int VM_EXEC ; 
 int VM_READ ; 
 int VM_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC2(struct vm_area_struct *a, struct vm_area_struct *b)
{
	return a->vm_end == b->vm_start &&
		FUNC0(FUNC1(a), FUNC1(b)) &&
		a->vm_file == b->vm_file &&
		!((a->vm_flags ^ b->vm_flags) & ~(VM_READ|VM_WRITE|VM_EXEC)) &&
		b->vm_pgoff == a->vm_pgoff + ((b->vm_start - a->vm_start) >> PAGE_SHIFT);
}