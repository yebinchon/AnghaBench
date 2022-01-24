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
struct vm_area_struct {int vm_flags; scalar_t__ vm_pgoff; unsigned long vm_end; unsigned long vm_start; int /*<<< orphan*/  vm_page_prot; } ;
struct file {scalar_t__ private_data; } ;
struct dmabuf {unsigned long buforder; int mapped; int /*<<< orphan*/  rawbuf; } ;
struct au1550_state {int /*<<< orphan*/  sem; struct dmabuf dma_adc; struct dmabuf dma_dac; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 unsigned long PAGE_SIZE ; 
 int VM_IO ; 
 int VM_READ ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct file *file, struct vm_area_struct *vma)
{
	struct au1550_state *s = (struct au1550_state *)file->private_data;
	struct dmabuf  *db;
	unsigned long   size;
	int ret = 0;

	FUNC0();
	FUNC1(&s->sem);
	if (vma->vm_flags & VM_WRITE)
		db = &s->dma_dac;
	else if (vma->vm_flags & VM_READ)
		db = &s->dma_adc;
	else {
		ret = -EINVAL;
		goto out;
	}
	if (vma->vm_pgoff != 0) {
		ret = -EINVAL;
		goto out;
	}
	size = vma->vm_end - vma->vm_start;
	if (size > (PAGE_SIZE << db->buforder)) {
		ret = -EINVAL;
		goto out;
	}
	if (FUNC4(vma, vma->vm_start, FUNC3(FUNC6(db->rawbuf)),
			     size, vma->vm_page_prot)) {
		ret = -EAGAIN;
		goto out;
	}
	vma->vm_flags &= ~VM_IO;
	db->mapped = 1;
out:
	FUNC2(&s->sem);
	FUNC5();
	return ret;
}