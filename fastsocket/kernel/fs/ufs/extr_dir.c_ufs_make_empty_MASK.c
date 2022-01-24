#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ufs_dir_entry {int /*<<< orphan*/  d_name; void* d_reclen; void* d_ino; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; struct address_space* i_mapping; struct super_block* i_sb; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_uspi; } ;
struct TYPE_3__ {unsigned int s_dirblksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct address_space*,int /*<<< orphan*/ ,unsigned int const,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct super_block*,scalar_t__) ; 
 void* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,void*) ; 
 struct page* FUNC6 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (struct page*,int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,struct ufs_dir_entry*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,struct ufs_dir_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

int FUNC17(struct inode * inode, struct inode *dir)
{
	struct super_block * sb = dir->i_sb;
	struct address_space *mapping = inode->i_mapping;
	struct page *page = FUNC6(mapping, 0);
	const unsigned int chunk_size = FUNC1(sb)->s_uspi->s_dirblksize;
	struct ufs_dir_entry * de;
	char *base;
	int err;

	if (!page)
		return -ENOMEM;

	err = FUNC2(NULL, mapping, 0, chunk_size,
				AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	if (err) {
		FUNC16(page);
		goto fail;
	}

	FUNC7(page);
	base = (char*)FUNC10(page);
	FUNC9(base, 0, PAGE_CACHE_SIZE);

	de = (struct ufs_dir_entry *) base;

	de->d_ino = FUNC4(sb, inode->i_ino);
	FUNC15(sb, de, inode->i_mode);
	FUNC14(sb, de, 1);
	de->d_reclen = FUNC3(sb, FUNC0(1));
	FUNC12 (de->d_name, ".");
	de = (struct ufs_dir_entry *)
		((char *)de + FUNC5(sb, de->d_reclen));
	de->d_ino = FUNC4(sb, dir->i_ino);
	FUNC15(sb, de, dir->i_mode);
	de->d_reclen = FUNC3(sb, chunk_size - FUNC0(1));
	FUNC14(sb, de, 2);
	FUNC12 (de->d_name, "..");
	FUNC8(page);

	err = FUNC13(page, 0, chunk_size);
fail:
	FUNC11(page);
	return err;
}