#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_7__ {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_atime; } ;
struct TYPE_5__ {TYPE_3__* d_inode; } ;

/* Variables and functions */
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (struct file*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 char* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static int FUNC12(struct file *file, struct page *page,
	loff_t *poffset)
{
	char *read_data;
	int rc;

	/* Is the page cached? */
	rc = FUNC3(file->f_path.dentry->d_inode, page);
	if (rc == 0)
		goto read_complete;

	FUNC10(page);
	read_data = FUNC7(page);
	/* for reads over a certain size could initiate async read ahead */

	rc = FUNC2(file, read_data, PAGE_CACHE_SIZE, poffset);

	if (rc < 0)
		goto io_error;
	else
		FUNC1(1, "Bytes read %d", rc);

	file->f_path.dentry->d_inode->i_atime =
		FUNC5(file->f_path.dentry->d_inode->i_sb);

	if (PAGE_CACHE_SIZE > rc)
		FUNC9(read_data + rc, 0, PAGE_CACHE_SIZE - rc);

	FUNC6(page);
	FUNC0(page);

	/* send this page to the cache */
	FUNC4(file->f_path.dentry->d_inode, page);

	rc = 0;

io_error:
	FUNC8(page);
	FUNC11(page);

read_complete:
	return rc;
}