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
struct hfs_bnode {struct page** page; scalar_t__ page_offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

void FUNC4(struct hfs_bnode *node, int off, int len)
{
	struct page *page;

	off += node->page_offset;
	page = node->page[0];

	FUNC2(FUNC0(page) + off, 0, len);
	FUNC1(page);
	FUNC3(page);
}