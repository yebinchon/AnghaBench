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
struct TYPE_4__ {char* i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_lenEAttr; TYPE_2__ i_ext; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {char* b_data; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct udf_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 char* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct buffer_head* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static int FUNC12(struct file *file, struct page *page)
{
	struct inode *inode = page->mapping->host;
	struct buffer_head *bh = NULL;
	char *symlink;
	int err = -EIO;
	char *p = FUNC4(page);
	struct udf_inode_info *iinfo;

	FUNC6();
	iinfo = FUNC2(inode);
	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
		symlink = iinfo->i_ext.i_data + iinfo->i_lenEAttr;
	} else {
		bh = FUNC7(inode->i_sb, FUNC8(inode, 0));

		if (!bh)
			goto out;

		symlink = bh->b_data;
	}

	FUNC9(inode->i_sb, symlink, inode->i_size, p);
	FUNC3(bh);

	FUNC10();
	FUNC1(page);
	FUNC5(page);
	FUNC11(page);
	return 0;

out:
	FUNC10();
	FUNC0(page);
	FUNC5(page);
	FUNC11(page);
	return err;
}