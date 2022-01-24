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
struct vm_fault {struct page* page; } ;
struct vm_area_struct {struct file* vm_file; } ;
struct page {unsigned long index; struct address_space* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; struct address_space* i_mapping; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct address_space {int dummy; } ;
typedef  unsigned long loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELALLOC ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_STATE_JDATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long PAGE_CACHE_MASK ; 
 int PAGE_CACHE_SHIFT ; 
 unsigned long PAGE_CACHE_SIZE ; 
 int VM_FAULT_LOCKED ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_SIGBUS ; 
 int FUNC1 (struct vm_area_struct*,struct vm_fault*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  do_journal_get_write_access ; 
 int /*<<< orphan*/  ext4_bh_unmapped ; 
 int /*<<< orphan*/  ext4_da_get_block_prep ; 
 int /*<<< orphan*/  ext4_get_block ; 
 int /*<<< orphan*/ * FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 unsigned long FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 unsigned long FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC21(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	loff_t size;
	unsigned long len;
	int ret;
	struct file *file = vma->vm_file;
	struct inode *inode = file->f_path.dentry->d_inode;
	struct address_space *mapping = inode->i_mapping;
	handle_t *handle;
	int retries = 0;

	FUNC16(inode->i_sb);
	/* Delalloc case is easy... */
	if (FUNC17(inode->i_sb, DELALLOC) &&
	    !FUNC7(inode) &&
	    !FUNC5(inode->i_sb)) {
		do {
			ret = FUNC1(vma, vmf,
						   ext4_da_get_block_prep);
		} while (ret == -ENOSPC &&
			FUNC8(inode->i_sb, &retries));
		goto out_ret;
	}

	FUNC11(page);
	size = FUNC10(inode);
	/* Page got truncated from under us? */
	if (page->mapping != mapping || FUNC14(page) > size) {
		FUNC18(page);
		ret = VM_FAULT_NOPAGE;
		goto out;
	}

	if (page->index == size >> PAGE_CACHE_SHIFT)
		len = size & ~PAGE_CACHE_MASK;
	else
		len = PAGE_CACHE_SIZE;
	/*
	 * Return if we have all the buffers mapped. This avoids the need to do
	 * journal_start/journal_stop which can block and take a long time
	 */
	if (FUNC13(page)) {
		if (!FUNC20(NULL, FUNC12(page), 0, len, NULL,
					ext4_bh_unmapped)) {
			/* Wait so that we don't change page under IO */
			FUNC19(page);
			ret = VM_FAULT_LOCKED;
			goto out;
		}
	}
	FUNC18(page);
	/* OK, we need to fill the hole... */
retry_alloc:
	handle = FUNC3(inode, FUNC9(inode));
	if (FUNC0(handle)) {
		ret = VM_FAULT_SIGBUS;
		goto out;
	}
	ret = FUNC1(vma, vmf, ext4_get_block);
	if (!ret && FUNC7(inode)) {
		if (FUNC20(handle, FUNC12(page), 0,
			  PAGE_CACHE_SIZE, NULL, do_journal_get_write_access)) {
			FUNC18(page);
			ret = VM_FAULT_SIGBUS;
			goto out;
		}
		FUNC6(inode, EXT4_STATE_JDATA);
	}
	FUNC4(handle);
	if (ret == -ENOSPC && FUNC8(inode->i_sb, &retries))
		goto retry_alloc;
out_ret:
	ret = FUNC2(ret);
out:
	FUNC15(inode->i_sb);
        return ret;
}