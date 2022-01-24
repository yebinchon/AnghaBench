#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {unsigned long vm_start; int vm_flags; scalar_t__ vm_pgoff; unsigned long vm_end; struct comedi_async* vm_private_data; int /*<<< orphan*/ * vm_ops; } ;
struct file {TYPE_1__* f_dentry; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  minor; int /*<<< orphan*/  attached; } ;
struct comedi_async {unsigned long prealloc_bufsz; int /*<<< orphan*/  mmap_count; TYPE_2__* buf_page_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  virt_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EAGAIN ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SHARED ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int VM_WRITE ; 
 struct comedi_device_file_info* FUNC1 (unsigned int const) ; 
 struct comedi_subdevice* FUNC2 (struct comedi_device_file_info*) ; 
 struct comedi_subdevice* FUNC3 (struct comedi_device_file_info*) ; 
 int /*<<< orphan*/  comedi_vm_ops ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct file *file, struct vm_area_struct *vma)
{
	const unsigned minor = FUNC4(file->f_dentry->d_inode);
	struct comedi_device_file_info *dev_file_info =
	    FUNC1(minor);
	struct comedi_device *dev = dev_file_info->device;
	struct comedi_async *async = NULL;
	unsigned long start = vma->vm_start;
	unsigned long size;
	int n_pages;
	int i;
	int retval;
	struct comedi_subdevice *s;

	FUNC5(&dev->mutex);
	if (!dev->attached) {
		FUNC0("no driver configured on comedi%i\n", dev->minor);
		retval = -ENODEV;
		goto done;
	}
	if (vma->vm_flags & VM_WRITE)
		s = FUNC3(dev_file_info);
	else
		s = FUNC2(dev_file_info);

	if (s == NULL) {
		retval = -EINVAL;
		goto done;
	}
	async = s->async;
	if (async == NULL) {
		retval = -EINVAL;
		goto done;
	}

	if (vma->vm_pgoff != 0) {
		FUNC0("comedi: mmap() offset must be 0.\n");
		retval = -EINVAL;
		goto done;
	}

	size = vma->vm_end - vma->vm_start;
	if (size > async->prealloc_bufsz) {
		retval = -EFAULT;
		goto done;
	}
	if (size & (~PAGE_MASK)) {
		retval = -EFAULT;
		goto done;
	}

	n_pages = size >> PAGE_SHIFT;
	for (i = 0; i < n_pages; ++i) {
		if (FUNC8(vma, start,
				    FUNC7(FUNC9
						(async->buf_page_list
						 [i].virt_addr)), PAGE_SIZE,
				    PAGE_SHARED)) {
			retval = -EAGAIN;
			goto done;
		}
		start += PAGE_SIZE;
	}

	vma->vm_ops = &comedi_vm_ops;
	vma->vm_private_data = async;

	async->mmap_count++;

	retval = 0;
done:
	FUNC6(&dev->mutex);
	return retval;
}