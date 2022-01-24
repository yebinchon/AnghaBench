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
struct vm_area_struct {int vm_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VM_MAYSHARE ; 
 unsigned long FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct vm_area_struct *vma, unsigned long flags)
{
	FUNC0(!FUNC2(vma));
	FUNC0(vma->vm_flags & VM_MAYSHARE);

	FUNC3(vma, FUNC1(vma) | flags);
}