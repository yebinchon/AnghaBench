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
struct page {int /*<<< orphan*/  mapping; } ;
struct inode {int /*<<< orphan*/  i_ino; struct address_space* i_mapping; } ;
struct ext2_dir_entry_2 {int name_len; int /*<<< orphan*/  name; void* inode; void* rec_len; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct inode*) ; 
 int FUNC4 (struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ext2_dir_entry_2*,struct inode*) ; 
 struct page* FUNC7 (struct address_space*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

int FUNC14(struct inode *inode, struct inode *parent)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page = FUNC7(mapping, 0);
	unsigned chunk_size = FUNC3(inode);
	struct ext2_dir_entry_2 * de;
	int err;
	void *kaddr;

	if (!page)
		return -ENOMEM;

	err = FUNC1(NULL, page->mapping, 0, chunk_size, 0,
							&page, NULL);
	if (err) {
		FUNC13(page);
		goto fail;
	}
	kaddr = FUNC8(page, KM_USER0);
	FUNC11(kaddr, 0, chunk_size);
	de = (struct ext2_dir_entry_2 *)kaddr;
	de->name_len = 1;
	de->rec_len = FUNC5(FUNC0(1));
	FUNC10 (de->name, ".\0\0", 4);
	de->inode = FUNC2(inode->i_ino);
	FUNC6 (de, inode);

	de = (struct ext2_dir_entry_2 *)(kaddr + FUNC0(1));
	de->name_len = 2;
	de->rec_len = FUNC5(chunk_size - FUNC0(1));
	de->inode = FUNC2(parent->i_ino);
	FUNC10 (de->name, "..\0", 4);
	FUNC6 (de, inode);
	FUNC9(kaddr, KM_USER0);
	err = FUNC4(page, 0, chunk_size);
fail:
	FUNC12(page);
	return err;
}