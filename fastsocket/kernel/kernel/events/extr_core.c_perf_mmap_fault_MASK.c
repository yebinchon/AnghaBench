#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_fault {int flags; int /*<<< orphan*/  pgoff; TYPE_2__* page; } ;
struct vm_area_struct {TYPE_1__* vm_file; } ;
struct ring_buffer {int dummy; } ;
struct perf_event {int /*<<< orphan*/  rb; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; int /*<<< orphan*/  mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_mapping; struct perf_event* private_data; } ;

/* Variables and functions */
 int FAULT_FLAG_MKWRITE ; 
 int FAULT_FLAG_WRITE ; 
 int VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (struct ring_buffer*,int /*<<< orphan*/ ) ; 
 struct ring_buffer* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct perf_event *event = vma->vm_file->private_data;
	struct ring_buffer *rb;
	int ret = VM_FAULT_SIGBUS;

	if (vmf->flags & FAULT_FLAG_MKWRITE) {
		if (vmf->pgoff == 0)
			ret = 0;
		return ret;
	}

	FUNC3();
	rb = FUNC2(event->rb);
	if (!rb)
		goto unlock;

	if (vmf->pgoff && (vmf->flags & FAULT_FLAG_WRITE))
		goto unlock;

	vmf->page = FUNC1(rb, vmf->pgoff);
	if (!vmf->page)
		goto unlock;

	FUNC0(vmf->page);
	vmf->page->mapping = vma->vm_file->f_mapping;
	vmf->page->index   = vmf->pgoff;

	ret = 0;
unlock:
	FUNC4();

	return ret;
}