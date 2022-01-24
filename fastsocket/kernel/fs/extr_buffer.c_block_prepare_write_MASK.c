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
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  get_block_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct inode*,struct page*,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 

int FUNC2(struct page *page, unsigned from, unsigned to,
			get_block_t *get_block)
{
	struct inode *inode = page->mapping->host;
	int err = FUNC1(inode, page, from, to, get_block);
	if (err)
		FUNC0(page);
	return err;
}