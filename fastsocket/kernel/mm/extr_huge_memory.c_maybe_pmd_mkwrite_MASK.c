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
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int VM_WRITE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline pmd_t FUNC2(pmd_t pmd, struct vm_area_struct *vma)
{
	if (FUNC0(vma->vm_flags & VM_WRITE))
		pmd = FUNC1(pmd);
	return pmd;
}