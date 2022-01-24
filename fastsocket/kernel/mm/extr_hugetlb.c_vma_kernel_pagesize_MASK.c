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
struct vm_area_struct {int dummy; } ;
struct hstate {unsigned long order; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 struct hstate* FUNC0 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 

unsigned long FUNC2(struct vm_area_struct *vma)
{
	struct hstate *hstate;

	if (!FUNC1(vma))
		return PAGE_SIZE;

	hstate = FUNC0(vma);

	return 1UL << (hstate->order + PAGE_SHIFT);
}