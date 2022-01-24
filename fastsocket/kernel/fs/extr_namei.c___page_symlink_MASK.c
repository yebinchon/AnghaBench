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
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 unsigned int AOP_FLAG_NOFS ; 
 unsigned int AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  KM_USER0 ; 
 char* FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct address_space*,int /*<<< orphan*/ ,int,unsigned int,struct page**,void**) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct address_space*,int /*<<< orphan*/ ,int,int,struct page*,void*) ; 

int FUNC6(struct inode *inode, const char *symname, int len, int nofs)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page;
	void *fsdata;
	int err;
	char *kaddr;
	unsigned int flags = AOP_FLAG_UNINTERRUPTIBLE;
	if (nofs)
		flags |= AOP_FLAG_NOFS;

retry:
	err = FUNC4(NULL, mapping, 0, len-1,
				flags, &page, &fsdata);
	if (err)
		goto fail;

	kaddr = FUNC0(page, KM_USER0);
	FUNC3(kaddr, symname, len-1);
	FUNC1(kaddr, KM_USER0);

	err = FUNC5(NULL, mapping, 0, len-1, len-1,
							page, fsdata);
	if (err < 0)
		goto fail;
	if (err < len-1)
		goto retry;

	FUNC2(inode);
	return 0;
fail:
	return err;
}