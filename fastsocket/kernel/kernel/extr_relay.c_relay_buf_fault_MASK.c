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
struct vm_fault {int pgoff; struct page* page; } ;
struct vm_area_struct {struct rchan_buf* vm_private_data; } ;
struct rchan_buf {scalar_t__ start; } ;
struct page {int dummy; } ;
typedef  int pgoff_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct page *page;
	struct rchan_buf *buf = vma->vm_private_data;
	pgoff_t pgoff = vmf->pgoff;

	if (!buf)
		return VM_FAULT_OOM;

	page = FUNC1(buf->start + (pgoff << PAGE_SHIFT));
	if (!page)
		return VM_FAULT_SIGBUS;
	FUNC0(page);
	vmf->page = page;

	return 0;
}