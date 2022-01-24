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
struct vm_fault {struct page* page; scalar_t__ virtual_address; } ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int GFP_USER ; 
 int VM_FAULT_OOM ; 
 int __GFP_DMA32 ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct page *page;

	page = FUNC0(GFP_USER | __GFP_DMA32);
	if (!page)
		return VM_FAULT_OOM;
	FUNC1(page, (unsigned long)vmf->virtual_address);
	vmf->page = page;
	return 0;
}