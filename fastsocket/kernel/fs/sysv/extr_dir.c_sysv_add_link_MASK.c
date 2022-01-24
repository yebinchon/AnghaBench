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
struct sysv_dir_entry {scalar_t__ inode; int /*<<< orphan*/  name; } ;
struct page {int /*<<< orphan*/  mapping; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {char* name; int len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_parent; } ;
typedef  int loff_t ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ PAGE_CACHE_SIZE ; 
 int FUNC2 (struct page*) ; 
 int SYSV_DIRSIZE ; 
 int /*<<< orphan*/  SYSV_NAMELEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct page*,int,int) ; 
 struct page* FUNC7 (struct inode*,unsigned long) ; 
 unsigned long FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 

int FUNC18(struct dentry *dentry, struct inode *inode)
{
	struct inode *dir = dentry->d_parent->d_inode;
	const char * name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	struct page *page = NULL;
	struct sysv_dir_entry * de;
	unsigned long npages = FUNC8(dir);
	unsigned long n;
	char *kaddr;
	loff_t pos;
	int err;

	/* We take care of directory expansion in the same loop */
	for (n = 0; n <= npages; n++) {
		page = FUNC7(dir, n);
		err = FUNC2(page);
		if (FUNC1(page))
			goto out;
		kaddr = (char*)FUNC15(page);
		de = (struct sysv_dir_entry *)kaddr;
		kaddr += PAGE_CACHE_SIZE - SYSV_DIRSIZE;
		while ((char *)de <= kaddr) {
			if (!de->inode)
				goto got_it;
			err = -EEXIST;
			if (FUNC14(namelen, SYSV_NAMELEN, name, de->name)) 
				goto out_page;
			de++;
		}
		FUNC9(page);
	}
	FUNC0();
	return -EINVAL;

got_it:
	pos = FUNC16(page) +
			(char*)de - (char*)FUNC15(page);
	FUNC10(page);
	err = FUNC4(NULL, page->mapping, pos, SYSV_DIRSIZE,
				AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	if (err)
		goto out_unlock;
	FUNC12 (de->name, name, namelen);
	FUNC13 (de->name + namelen, 0, SYSV_DIRSIZE - namelen - 2);
	de->inode = FUNC5(FUNC3(inode->i_sb), inode->i_ino);
	err = FUNC6(page, pos, SYSV_DIRSIZE);
	dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
	FUNC11(dir);
out_page:
	FUNC9(page);
out:
	return err;
out_unlock:
	FUNC17(page);
	goto out_page;
}