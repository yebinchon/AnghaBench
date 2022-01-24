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
struct nilfs_dir_entry {int name_len; int /*<<< orphan*/  name; void* inode; void* rec_len; } ;
struct inode {int /*<<< orphan*/  i_ino; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (struct address_space*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC8 (struct inode*) ; 
 int FUNC9 (struct page*,struct address_space*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC10 (struct page*,struct address_space*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct nilfs_dir_entry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

int FUNC15(struct inode *inode, struct inode *parent)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page = FUNC3(mapping, 0);
	unsigned chunk_size = FUNC8(inode);
	struct nilfs_dir_entry *de;
	int err;
	void *kaddr;

	if (!page)
		return -ENOMEM;

	err = FUNC10(page, mapping, 0, chunk_size);
	if (FUNC13(err)) {
		FUNC14(page);
		goto fail;
	}
	kaddr = FUNC4(page, KM_USER0);
	FUNC7(kaddr, 0, chunk_size);
	de = (struct nilfs_dir_entry *)kaddr;
	de->name_len = 1;
	de->rec_len = FUNC1(FUNC0(1));
	FUNC6(de->name, ".\0\0", 4);
	de->inode = FUNC2(inode->i_ino);
	FUNC11(de, inode);

	de = (struct nilfs_dir_entry *)(kaddr + FUNC0(1));
	de->name_len = 2;
	de->rec_len = FUNC1(chunk_size - FUNC0(1));
	de->inode = FUNC2(parent->i_ino);
	FUNC6(de->name, "..\0", 4);
	FUNC11(de, inode);
	FUNC5(kaddr, KM_USER0);
	err = FUNC9(page, mapping, 0, chunk_size);
fail:
	FUNC12(page);
	return err;
}