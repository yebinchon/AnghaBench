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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int FUNC2 (struct address_space*,int /*<<< orphan*/ ,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct address_space *mapping,
			   loff_t pos, unsigned len, unsigned copied,
			   struct page *page, void *fsdata)
{
	int ret;
	struct inode *inode = mapping->host;

	ret = FUNC2(mapping, pos, len, copied, page, fsdata);

	FUNC3(&FUNC0(inode)->ip_alloc_sem);
	FUNC1(inode, 1);

	return ret;
}