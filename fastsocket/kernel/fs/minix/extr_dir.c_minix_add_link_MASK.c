#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct page {int /*<<< orphan*/  mapping; } ;
struct minix_sb_info {char* s_dirsize; scalar_t__ s_version; int /*<<< orphan*/  s_namelen; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; scalar_t__ i_ino; struct super_block* i_sb; } ;
struct TYPE_6__ {char* name; int len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_parent; } ;
struct TYPE_7__ {char* name; scalar_t__ inode; } ;
typedef  TYPE_3__ minix_dirent ;
struct TYPE_8__ {char* name; scalar_t__ inode; } ;
typedef  TYPE_4__ minix3_dirent ;
typedef  int loff_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ MINIX_V3 ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC2 (struct page*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct page*,int,char*) ; 
 struct page* FUNC5 (struct inode*,unsigned long) ; 
 unsigned long FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (struct inode*,unsigned long) ; 
 char* FUNC13 (char*,struct minix_sb_info*) ; 
 struct minix_sb_info* FUNC14 (struct super_block*) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ,char const*,char*) ; 
 scalar_t__ FUNC16 (struct page*) ; 
 int FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 

int FUNC19(struct dentry *dentry, struct inode *inode)
{
	struct inode *dir = dentry->d_parent->d_inode;
	const char * name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	struct super_block * sb = dir->i_sb;
	struct minix_sb_info * sbi = FUNC14(sb);
	struct page *page = NULL;
	unsigned long npages = FUNC6(dir);
	unsigned long n;
	char *kaddr, *p;
	minix_dirent *de;
	minix3_dirent *de3;
	loff_t pos;
	int err;
	char *namx = NULL;
	__u32 inumber;

	/*
	 * We take care of directory expansion in the same loop
	 * This code plays outside i_size, so it locks the page
	 * to protect that region.
	 */
	for (n = 0; n <= npages; n++) {
		char *limit, *dir_end;

		page = FUNC5(dir, n);
		err = FUNC2(page);
		if (FUNC1(page))
			goto out;
		FUNC8(page);
		kaddr = (char*)FUNC16(page);
		dir_end = kaddr + FUNC12(dir, n);
		limit = kaddr + PAGE_CACHE_SIZE - sbi->s_dirsize;
		for (p = kaddr; p <= limit; p = FUNC13(p, sbi)) {
			de = (minix_dirent *)p;
			de3 = (minix3_dirent *)p;
			if (sbi->s_version == MINIX_V3) {
				namx = de3->name;
				inumber = de3->inode;
		 	} else {
  				namx = de->name;
				inumber = de->inode;
			}
			if (p == dir_end) {
				/* We hit i_size */
				if (sbi->s_version == MINIX_V3)
					de3->inode = 0;
		 		else
					de->inode = 0;
				goto got_it;
			}
			if (!inumber)
				goto got_it;
			err = -EEXIST;
			if (FUNC15(namelen, sbi->s_namelen, name, namx))
				goto out_unlock;
		}
		FUNC18(page);
		FUNC7(page);
	}
	FUNC0();
	return -EINVAL;

got_it:
	pos = FUNC17(page) + p - (char *)FUNC16(page);
	err = FUNC3(NULL, page->mapping, pos, sbi->s_dirsize,
					AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	if (err)
		goto out_unlock;
	FUNC10 (namx, name, namelen);
	if (sbi->s_version == MINIX_V3) {
		FUNC11 (namx + namelen, 0, sbi->s_dirsize - namelen - 4);
		de3->inode = inode->i_ino;
	} else {
		FUNC11 (namx + namelen, 0, sbi->s_dirsize - namelen - 2);
		de->inode = inode->i_ino;
	}
	err = FUNC4(page, pos, sbi->s_dirsize);
	dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
	FUNC9(dir);
out_put:
	FUNC7(page);
out:
	return err;
out_unlock:
	FUNC18(page);
	goto out_put;
}