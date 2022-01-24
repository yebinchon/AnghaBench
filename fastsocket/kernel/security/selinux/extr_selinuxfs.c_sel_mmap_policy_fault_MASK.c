#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_fault {int flags; unsigned long pgoff; struct page* page; } ;
struct vm_area_struct {TYPE_1__* vm_file; } ;
struct policy_load_memory {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct page {int dummy; } ;
struct TYPE_2__ {struct policy_load_memory* private_data; } ;

/* Variables and functions */
 int FAULT_FLAG_MKWRITE ; 
 int FAULT_FLAG_WRITE ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct vm_area_struct *vma,
				 struct vm_fault *vmf)
{
	struct policy_load_memory *plm = vma->vm_file->private_data;
	unsigned long offset;
	struct page *page;

	if (vmf->flags & (FAULT_FLAG_MKWRITE | FAULT_FLAG_WRITE))
		return VM_FAULT_SIGBUS;

	offset = vmf->pgoff << PAGE_SHIFT;
	if (offset >= FUNC1(plm->len, PAGE_SIZE))
		return VM_FAULT_SIGBUS;

	page = FUNC2(plm->data + offset);
	FUNC0(page);

	vmf->page = page;

	return 0;
}