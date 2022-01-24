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
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_CACHE_SHIFT ; 
 int __GFP_FS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct inode*,struct page*,int,int,int) ; 
 struct page* FUNC1 (struct address_space*,int,int) ; 
 int FUNC2 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

int FUNC5(handle_t *handle,
		struct address_space *mapping, loff_t from,
		loff_t length, int flags)
{
	struct inode *inode = mapping->host;
	struct page *page;
	int err = 0;

	page = FUNC1(mapping, from >> PAGE_CACHE_SHIFT,
				   FUNC2(mapping) & ~__GFP_FS);
	if (!page)
		return -ENOMEM;

	err = FUNC0(handle, inode, page,
		from, length, flags);

	FUNC4(page);
	FUNC3(page);
	return err;
}