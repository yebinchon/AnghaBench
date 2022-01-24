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

/* Variables and functions */
 int FUNC0 (struct page*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_get_block ; 

int FUNC1(struct inode *inode, struct page *page,
			       unsigned from, unsigned to)
{
	int ret;

	ret = FUNC0(page, from, to, ocfs2_get_block);

	return ret;
}