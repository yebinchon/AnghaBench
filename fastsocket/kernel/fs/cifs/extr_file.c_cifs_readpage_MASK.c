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
struct page {scalar_t__ index; } ;
struct file {int /*<<< orphan*/ * private_data; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EACCES ; 
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct page*,int,int) ; 
 int FUNC3 (struct file*,struct page*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct page *page)
{
	loff_t offset = (loff_t)page->index << PAGE_CACHE_SHIFT;
	int rc = -EACCES;
	int xid;

	xid = FUNC1();

	if (file->private_data == NULL) {
		rc = -EBADF;
		FUNC0(xid);
		return rc;
	}

	FUNC2(1, "readpage %p at offset %d 0x%x\n",
		 page, (int)offset, (int)offset);

	rc = FUNC3(file, page, &offset);

	FUNC4(page);

	FUNC0(xid);
	return rc;
}