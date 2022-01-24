#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vm_fault {struct page* page; } ;
struct vm_area_struct {TYPE_4__* vm_file; } ;
struct page {scalar_t__ mapping; int index; } ;
struct inode {scalar_t__ i_mapping; TYPE_3__* i_sb; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  get_block_t ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_8__ {TYPE_2__ f_path; } ;
struct TYPE_7__ {scalar_t__ s_frozen; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int PAGE_CACHE_MASK ; 
 int PAGE_CACHE_SHIFT ; 
 unsigned long PAGE_CACHE_SIZE ; 
 scalar_t__ SB_UNFROZEN ; 
 int FUNC0 (struct page*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (struct page*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

int FUNC11(struct vm_area_struct *vma, struct vm_fault *vmf,
			 get_block_t get_block)
{
	struct page *page = vmf->page;
	struct inode *inode = vma->vm_file->f_path.dentry->d_inode;
	unsigned long end;
	loff_t size;
	int ret;

	/*
	 * Update file times before taking page lock. We may end up failing the
	 * fault so this update may be superfluous but who really cares...
	 */
	FUNC2(vma->vm_file);

	FUNC4(page);
	size = FUNC3(inode);
	if ((page->mapping != inode->i_mapping) ||
	    (FUNC5(page) > size)) {
		/* We overload EFAULT to mean page got truncated */
		ret = -EFAULT;
		goto out_unlock;
	}

	/* page is wholly or partially inside EOF */
	if (((page->index + 1) << PAGE_CACHE_SHIFT) > size)
		end = size & ~PAGE_CACHE_MASK;
	else
		end = PAGE_CACHE_SIZE;

	ret = FUNC1(page, 0, end, get_block);
	if (!ret)
		ret = FUNC0(page, 0, end);

	if (FUNC8(ret < 0))
		goto out_unlock;
	/*
	 * OLD FREEZE PATH:
	 * Freezing in progress? We check after the page is marked dirty and
	 * with page lock held so if the test here fails, we are sure freezing
	 * code will wait during syncing until the page fault is done - at that
	 * point page will be dirty and unlocked so freezing code will write it
	 * and writeprotect it again.
	 */
	FUNC7(page);
	if (!FUNC6(inode->i_sb) && inode->i_sb->s_frozen != SB_UNFROZEN) {
		ret = -EAGAIN;
		goto out_unlock;
	}
	FUNC10(page);
	return 0;
out_unlock:
	FUNC9(page);
	return ret;
}