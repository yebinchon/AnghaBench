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
struct vm_fault {int pgoff; scalar_t__ virtual_address; } ;
struct vm_area_struct {int vm_flags; struct file* vm_file; } ;
struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {TYPE_2__* a_ops; struct inode* host; } ;
typedef  int pgoff_t ;
struct TYPE_4__ {int (* get_xip_mem ) (struct address_space*,int,int,void**,unsigned long*) ;} ;
struct TYPE_3__ {int s_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int ENODATA ; 
 int ENOMEM ; 
 int MS_RDONLY ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_SIGBUS ; 
 int VM_MAYSHARE ; 
 int VM_MAYWRITE ; 
 int VM_SHARED ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,int) ; 
 int FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct address_space*,int,int,void**,unsigned long*) ; 
 int FUNC7 (struct address_space*,int,int,void**,unsigned long*) ; 
 int FUNC8 (struct address_space*,int,int,void**,unsigned long*) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int FUNC11 (struct vm_area_struct*,unsigned long,struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xip_sparse_mutex ; 
 struct page* FUNC14 () ; 
 int /*<<< orphan*/  xip_sparse_seq ; 

__attribute__((used)) static int FUNC15(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct file *file = vma->vm_file;
	struct address_space *mapping = file->f_mapping;
	struct inode *inode = mapping->host;
	pgoff_t size;
	void *xip_mem;
	unsigned long xip_pfn;
	struct page *page;
	int error;

	/* XXX: are VM_FAULT_ codes OK? */
again:
	size = (FUNC2(inode) + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
	if (vmf->pgoff >= size)
		return VM_FAULT_SIGBUS;

	error = mapping->a_ops->get_xip_mem(mapping, vmf->pgoff, 0,
						&xip_mem, &xip_pfn);
	if (FUNC3(!error))
		goto found;
	if (error != -ENODATA)
		return VM_FAULT_OOM;

	/* sparse block */
	if ((vma->vm_flags & (VM_WRITE | VM_MAYWRITE)) &&
	    (vma->vm_flags & (VM_SHARED | VM_MAYSHARE)) &&
	    (!(mapping->host->i_sb->s_flags & MS_RDONLY))) {
		int err;

		/* maybe shared writable, allocate new block */
		FUNC4(&xip_sparse_mutex);
		error = mapping->a_ops->get_xip_mem(mapping, vmf->pgoff, 1,
							&xip_mem, &xip_pfn);
		FUNC5(&xip_sparse_mutex);
		if (error)
			return VM_FAULT_SIGBUS;
		/* unmap sparse mappings at pgoff from all other vmas */
		FUNC1(mapping, vmf->pgoff);

found:
		err = FUNC10(vma, (unsigned long)vmf->virtual_address,
							xip_pfn);
		if (err == -ENOMEM)
			return VM_FAULT_OOM;
		/* err == -EBUSY is fine, we've raced against another thread
		   that faulted-in the same page */
		if (err != -EBUSY)
			FUNC0(err);
		return VM_FAULT_NOPAGE;
	} else {
		int err, ret = VM_FAULT_OOM;

		FUNC4(&xip_sparse_mutex);
		FUNC12(&xip_sparse_seq);
		error = mapping->a_ops->get_xip_mem(mapping, vmf->pgoff, 0,
							&xip_mem, &xip_pfn);
		if (FUNC9(!error)) {
			FUNC13(&xip_sparse_seq);
			FUNC5(&xip_sparse_mutex);
			goto again;
		}
		if (error != -ENODATA)
			goto out;
		/* not shared and writable, use xip_sparse_page() */
		page = FUNC14();
		if (!page)
			goto out;
		err = FUNC11(vma, (unsigned long)vmf->virtual_address,
							page);
		if (err == -ENOMEM)
			goto out;

		ret = VM_FAULT_NOPAGE;
out:
		FUNC13(&xip_sparse_seq);
		FUNC5(&xip_sparse_mutex);

		return ret;
	}
}