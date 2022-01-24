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
struct sysv_dir_entry {int /*<<< orphan*/  name; void* inode; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int SYSV_DIRSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct address_space*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct page*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC4 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

int FUNC12(struct inode *inode, struct inode *dir)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page = FUNC4(mapping, 0);
	struct sysv_dir_entry * de;
	char *base;
	int err;

	if (!page)
		return -ENOMEM;
	err = FUNC1(NULL, mapping, 0, 2 * SYSV_DIRSIZE,
				AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	if (err) {
		FUNC11(page);
		goto fail;
	}
	FUNC5(page);

	base = (char*)FUNC8(page);
	FUNC7(base, 0, PAGE_CACHE_SIZE);

	de = (struct sysv_dir_entry *) base;
	de->inode = FUNC2(FUNC0(inode->i_sb), inode->i_ino);
	FUNC10(de->name,".");
	de++;
	de->inode = FUNC2(FUNC0(inode->i_sb), dir->i_ino);
	FUNC10(de->name,"..");

	FUNC6(page);
	err = FUNC3(page, 0, 2 * SYSV_DIRSIZE);
fail:
	FUNC9(page);
	return err;
}