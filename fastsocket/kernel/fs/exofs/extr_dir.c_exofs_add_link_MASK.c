#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/  mapping; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; TYPE_3__* i_sb; } ;
struct exofs_sb_info {int /*<<< orphan*/  s_numfiles; } ;
struct exofs_dir_entry {scalar_t__ rec_len; int name_len; scalar_t__ inode_no; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {unsigned char* name; int len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_parent; } ;
typedef  int loff_t ;
struct TYPE_6__ {struct exofs_sb_info* s_fs_info; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EEXIST ; 
 int EINVAL ; 
 int EIO ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 unsigned int PAGE_CACHE_SIZE ; 
 int FUNC3 (struct page*) ; 
 void* FUNC4 (unsigned short) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (struct inode*) ; 
 unsigned int FUNC7 (struct inode*) ; 
 int FUNC8 (struct page*,int,unsigned short) ; 
 struct page* FUNC9 (struct inode*,unsigned long) ; 
 int FUNC10 (struct inode*,unsigned long) ; 
 scalar_t__ FUNC11 (int,unsigned char const*,struct exofs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct exofs_dir_entry*,struct inode*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned short,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 unsigned short FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 char* FUNC19 (struct page*) ; 
 int FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 

int FUNC22(struct dentry *dentry, struct inode *inode)
{
	struct inode *dir = dentry->d_parent->d_inode;
	const unsigned char *name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	unsigned chunk_size = FUNC7(dir);
	unsigned reclen = FUNC0(namelen);
	unsigned short rec_len, name_len;
	struct page *page = NULL;
	struct exofs_sb_info *sbi = inode->i_sb->s_fs_info;
	struct exofs_dir_entry *de;
	unsigned long npages = FUNC6(dir);
	unsigned long n;
	char *kaddr;
	loff_t pos;
	int err;

	for (n = 0; n <= npages; n++) {
		char *dir_end;

		page = FUNC9(dir, n);
		err = FUNC3(page);
		if (FUNC2(page))
			goto out;
		FUNC16(page);
		kaddr = FUNC19(page);
		dir_end = kaddr + FUNC10(dir, n);
		de = (struct exofs_dir_entry *)kaddr;
		kaddr += PAGE_CACHE_SIZE - reclen;
		while ((char *)de <= kaddr) {
			if ((char *)de == dir_end) {
				name_len = 0;
				rec_len = chunk_size;
				de->rec_len = FUNC4(chunk_size);
				de->inode_no = 0;
				goto got_it;
			}
			if (de->rec_len == 0) {
				FUNC1("ERROR: exofs_add_link: "
					"zero-length directory entry");
				err = -EIO;
				goto out_unlock;
			}
			err = -EEXIST;
			if (FUNC11(namelen, name, de))
				goto out_unlock;
			name_len = FUNC0(de->name_len);
			rec_len = FUNC15(de->rec_len);
			if (!de->inode_no && rec_len >= reclen)
				goto got_it;
			if (rec_len >= name_len + reclen)
				goto got_it;
			de = (struct exofs_dir_entry *) ((char *) de + rec_len);
		}
		FUNC21(page);
		FUNC12(page);
	}

	FUNC1("exofs_add_link: BAD dentry=%p or inode=%p", dentry, inode);
	return -EINVAL;

got_it:
	pos = FUNC20(page) +
		(char *)de - (char *)FUNC19(page);
	err = FUNC14(NULL, page->mapping, pos, rec_len, 0,
							&page, NULL);
	if (err)
		goto out_unlock;
	if (de->inode_no) {
		struct exofs_dir_entry *de1 =
			(struct exofs_dir_entry *)((char *)de + name_len);
		de1->rec_len = FUNC4(rec_len - name_len);
		de->rec_len = FUNC4(name_len);
		de = de1;
	}
	de->name_len = namelen;
	FUNC18(de->name, name, namelen);
	de->inode_no = FUNC5(inode->i_ino);
	FUNC13(de, inode);
	err = FUNC8(page, pos, rec_len);
	dir->i_mtime = dir->i_ctime = CURRENT_TIME;
	FUNC17(dir);
	sbi->s_numfiles++;

out_put:
	FUNC12(page);
out:
	return err;
out_unlock:
	FUNC21(page);
	goto out_put;
}