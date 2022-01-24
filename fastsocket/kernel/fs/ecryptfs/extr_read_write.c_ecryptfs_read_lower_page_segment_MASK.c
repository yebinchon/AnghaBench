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
struct page {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  size_t loff_t ;

/* Variables and functions */
 size_t PAGE_CACHE_SHIFT ; 
 int FUNC0 (char*,size_t,size_t,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 char* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

int FUNC4(struct page *page_for_ecryptfs,
				     pgoff_t page_index,
				     size_t offset_in_page, size_t size,
				     struct inode *ecryptfs_inode)
{
	char *virt;
	loff_t offset;
	int rc;

	offset = ((((loff_t)page_index) << PAGE_CACHE_SHIFT) + offset_in_page);
	virt = FUNC2(page_for_ecryptfs);
	rc = FUNC0(virt, offset, size, ecryptfs_inode);
	if (rc > 0)
		rc = 0;
	FUNC3(page_for_ecryptfs);
	FUNC1(page_for_ecryptfs);
	return rc;
}