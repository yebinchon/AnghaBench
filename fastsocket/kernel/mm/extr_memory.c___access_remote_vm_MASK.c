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
struct vm_area_struct {TYPE_1__* vm_ops; } ;
struct task_struct {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_2__ {int (* access ) (struct vm_area_struct*,unsigned long,void*,int,int) ;} ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,struct page*,unsigned long,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,struct page*,unsigned long,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long) ; 
 int FUNC4 (struct task_struct*,struct mm_struct*,unsigned long,int,int,int,struct page**,struct vm_area_struct**) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (struct vm_area_struct*,unsigned long,void*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct task_struct *tsk, struct mm_struct *mm,
		unsigned long addr, void *buf, int len, int write)
{
	struct vm_area_struct *vma;
	void *old_buf = buf;

	FUNC2(&mm->mmap_sem);
	/* ignore errors, just check how much was successfully transferred */
	while (len) {
		int bytes, ret, offset;
		void *maddr;
		struct page *page = NULL;

		ret = FUNC4(tsk, mm, addr, 1,
				write, 1, &page, &vma);
		if (ret <= 0) {
			/*
			 * Check if this is a VM_IO | VM_PFNMAP VMA, which
			 * we can access using slightly different code.
			 */
#ifdef CONFIG_HAVE_IOREMAP_PROT
			vma = find_vma(mm, addr);
			if (!vma)
				break;
			if (vma->vm_ops && vma->vm_ops->access)
				ret = vma->vm_ops->access(vma, addr, buf,
							  len, write);
			if (ret <= 0)
#endif
				break;
			bytes = ret;
		} else {
			bytes = len;
			offset = addr & (PAGE_SIZE-1);
			if (bytes > PAGE_SIZE-offset)
				bytes = PAGE_SIZE-offset;

			maddr = FUNC5(page);
			if (write) {
				FUNC1(vma, page, addr,
						  maddr + offset, buf, bytes);
				FUNC8(page);
			} else {
				FUNC0(vma, page, addr,
						    buf, maddr + offset, bytes);
			}
			FUNC6(page);
			FUNC7(page);
		}
		len -= bytes;
		buf += bytes;
		addr += bytes;
	}
	FUNC10(&mm->mmap_sem);

	return buf - old_buf;
}