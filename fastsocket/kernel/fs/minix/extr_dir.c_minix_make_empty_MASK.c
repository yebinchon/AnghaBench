#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct minix_sb_info {int s_dirsize; scalar_t__ s_version; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  inode; } ;
typedef  TYPE_1__ minix_dirent ;
typedef  TYPE_1__ minix3_dirent ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_USER0 ; 
 scalar_t__ MINIX_V3 ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct address_space*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct page*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC2 (struct address_space*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,struct minix_sb_info*) ; 
 struct minix_sb_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

int FUNC11(struct inode *inode, struct inode *dir)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page = FUNC2(mapping, 0);
	struct minix_sb_info *sbi = FUNC7(inode->i_sb);
	char *kaddr;
	int err;

	if (!page)
		return -ENOMEM;
	err = FUNC0(NULL, mapping, 0, 2 * sbi->s_dirsize,
					AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	if (err) {
		FUNC10(page);
		goto fail;
	}

	kaddr = FUNC3(page, KM_USER0);
	FUNC5(kaddr, 0, PAGE_CACHE_SIZE);

	if (sbi->s_version == MINIX_V3) {
		minix3_dirent *de3 = (minix3_dirent *)kaddr;

		de3->inode = inode->i_ino;
		FUNC9(de3->name, ".");
		de3 = FUNC6(de3, sbi);
		de3->inode = dir->i_ino;
		FUNC9(de3->name, "..");
	} else {
		minix_dirent *de = (minix_dirent *)kaddr;

		de->inode = inode->i_ino;
		FUNC9(de->name, ".");
		de = FUNC6(de, sbi);
		de->inode = dir->i_ino;
		FUNC9(de->name, "..");
	}
	FUNC4(kaddr, KM_USER0);

	err = FUNC1(page, 0, 2 * sbi->s_dirsize);
fail:
	FUNC8(page);
	return err;
}