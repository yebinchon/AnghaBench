#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_lenEAttr; TYPE_1__ i_ext; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int PAGE_CACHE_SIZE ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 char* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,unsigned int) ; 
 int FUNC4 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ; 

__attribute__((used)) static int FUNC5(struct file *file,
			struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *page, void *fsdata)
{
	struct inode *inode = mapping->host;
	unsigned offset = pos & (PAGE_CACHE_SIZE - 1);
	char *kaddr;
	struct udf_inode_info *iinfo = FUNC0(inode);

	kaddr = FUNC1(page, KM_USER0);
	FUNC3(iinfo->i_ext.i_data + iinfo->i_lenEAttr + offset,
		kaddr + offset, copied);
	FUNC2(kaddr, KM_USER0);

	return FUNC4(file, mapping, pos, len, copied, page, fsdata);
}