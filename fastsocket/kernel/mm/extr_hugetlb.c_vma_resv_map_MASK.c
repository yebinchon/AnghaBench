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
struct resv_map {int dummy; } ;

/* Variables and functions */
 int HPAGE_RESV_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VM_MAYSHARE ; 
 int FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 

__attribute__((used)) static struct resv_map *FUNC3(struct vm_area_struct *vma)
{
	FUNC0(!FUNC2(vma));
	if (!(vma->vm_flags & VM_MAYSHARE))
		return (struct resv_map *)(FUNC1(vma) &
							~HPAGE_RESV_MASK);
	return NULL;
}