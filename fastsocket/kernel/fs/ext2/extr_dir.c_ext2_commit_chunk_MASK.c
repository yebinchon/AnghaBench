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
struct page {struct address_space* mapping; } ;
struct inode {unsigned int i_size; int /*<<< orphan*/  i_version; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct page*,int) ; 

__attribute__((used)) static int FUNC7(struct page *page, loff_t pos, unsigned len)
{
	struct address_space *mapping = page->mapping;
	struct inode *dir = mapping->host;
	int err = 0;

	dir->i_version++;
	FUNC1(NULL, mapping, pos, len, len, page, NULL);

	if (pos+len > dir->i_size) {
		FUNC3(dir, pos+len);
		FUNC4(dir);
	}

	if (FUNC0(dir)) {
		err = FUNC6(page, 1);
		if (!err)
			err = FUNC2(dir);
	} else {
		FUNC5(page);
	}

	return err;
}