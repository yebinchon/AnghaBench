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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_pgoff; } ;
struct hstate {int dummy; } ;
typedef  unsigned long pgoff_t ;

/* Variables and functions */
 unsigned long FUNC0 (struct hstate*) ; 
 unsigned long FUNC1 (struct hstate*) ; 

__attribute__((used)) static pgoff_t FUNC2(struct hstate *h,
			struct vm_area_struct *vma, unsigned long address)
{
	return ((address - vma->vm_start) >> FUNC1(h)) +
			(vma->vm_pgoff >> FUNC0(h));
}