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
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int PAGE_CACHE_SIZE ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int,int) ; 

__attribute__((used)) static int FUNC2(struct page *page, unsigned int to)
{
	struct inode *inode = page->mapping->host;
	int end_byte_in_page;

	if ((FUNC0(inode) / PAGE_CACHE_SIZE) != page->index)
		goto out;
	end_byte_in_page = FUNC0(inode) % PAGE_CACHE_SIZE;
	if (to > end_byte_in_page)
		end_byte_in_page = to;
	FUNC1(page, end_byte_in_page, PAGE_CACHE_SIZE);
out:
	return 0;
}