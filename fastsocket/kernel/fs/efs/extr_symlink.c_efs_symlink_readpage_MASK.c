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
struct inode {int i_size; int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int efs_block_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int EFS_BLOCKSIZE ; 
 int EIO ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 
 char* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct file *file, struct page *page)
{
	char *link = FUNC4(page);
	struct buffer_head * bh;
	struct inode * inode = page->mapping->host;
	efs_block_t size = inode->i_size;
	int err;
  
	err = -ENAMETOOLONG;
	if (size > 2 * EFS_BLOCKSIZE)
		goto fail;
  
	/* read first 512 bytes of link target */
	err = -EIO;
	bh = FUNC7(inode->i_sb, FUNC3(inode, 0));
	if (!bh)
		goto fail;
	FUNC6(link, bh->b_data, (size > EFS_BLOCKSIZE) ? EFS_BLOCKSIZE : size);
	FUNC2(bh);
	if (size > EFS_BLOCKSIZE) {
		bh = FUNC7(inode->i_sb, FUNC3(inode, 1));
		if (!bh)
			goto fail;
		FUNC6(link + EFS_BLOCKSIZE, bh->b_data, size - EFS_BLOCKSIZE);
		FUNC2(bh);
	}
	link[size] = '\0';
	FUNC1(page);
	FUNC5(page);
	FUNC8(page);
	return 0;
fail:
	FUNC0(page);
	FUNC5(page);
	FUNC8(page);
	return err;
}