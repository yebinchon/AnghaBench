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
struct pagevec {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct iattr {int ia_mode; int /*<<< orphan*/  ia_valid; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__* d_inode; TYPE_2__ d_name; } ;
struct TYPE_8__ {int (* symlink ) (struct inode*,struct dentry*,struct page*,unsigned int,struct iattr*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KM_USER0 ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 unsigned int PAGE_SIZE ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,...) ; 
 char* FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct pagevec*,struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pagevec*) ; 
 unsigned int FUNC14 (char const*) ; 
 int FUNC15 (struct inode*,struct dentry*,struct page*,unsigned int,struct iattr*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

__attribute__((used)) static int FUNC17(struct inode *dir, struct dentry *dentry, const char *symname)
{
	struct pagevec lru_pvec;
	struct page *page;
	char *kaddr;
	struct iattr attr;
	unsigned int pathlen = FUNC14(symname);
	int error;

	FUNC6(VFS, "NFS: symlink(%s/%ld, %s, %s)\n", dir->i_sb->s_id,
		dir->i_ino, dentry->d_name.name, symname);

	if (pathlen > PAGE_SIZE)
		return -ENAMETOOLONG;

	attr.ia_mode = S_IFLNK | S_IRWXUGO;
	attr.ia_valid = ATTR_MODE;

	page = FUNC4(GFP_HIGHUSER);
	if (!page)
		return -ENOMEM;

	kaddr = FUNC7(page, KM_USER0);
	FUNC9(kaddr, symname, pathlen);
	if (pathlen < PAGE_SIZE)
		FUNC10(kaddr + pathlen, 0, PAGE_SIZE - pathlen);
	FUNC8(kaddr, KM_USER0);

	error = FUNC0(dir)->symlink(dir, dentry, page, pathlen, &attr);
	if (error != 0) {
		FUNC6(VFS, "NFS: symlink(%s/%ld, %s, %s) error %d\n",
			dir->i_sb->s_id, dir->i_ino,
			dentry->d_name.name, symname, error);
		FUNC5(dentry);
		FUNC2(page);
		return error;
	}

	/*
	 * No big deal if we can't add this page to the page cache here.
	 * READLINK will get the missing page from the server if needed.
	 */
	FUNC12(&lru_pvec, 0);
	if (!FUNC3(page, dentry->d_inode->i_mapping, 0,
							GFP_KERNEL)) {
		FUNC11(&lru_pvec, page);
		FUNC13(&lru_pvec);
		FUNC1(page);
		FUNC16(page);
	} else
		FUNC2(page);

	return 0;
}