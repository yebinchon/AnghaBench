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
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct coda_inode_info {int /*<<< orphan*/  c_fid; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 struct coda_inode_info* FUNC0 (struct inode*) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 char* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC9(struct file *file, struct page *page)
{
	struct inode *inode = page->mapping->host;
	int error;
	struct coda_inode_info *cii;
	unsigned int len = PAGE_SIZE;
	char *p = FUNC3(page);

	FUNC5();
	cii = FUNC0(inode);

	error = FUNC8(inode->i_sb, &cii->c_fid, p, &len);
	FUNC6();
	if (error)
		goto fail;
	FUNC2(page);
	FUNC4(page);
	FUNC7(page);
	return 0;

fail:
	FUNC1(page);
	FUNC4(page);
	FUNC7(page);
	return error;
}