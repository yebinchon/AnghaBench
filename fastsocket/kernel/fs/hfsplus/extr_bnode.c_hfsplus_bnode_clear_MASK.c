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
 int PAGE_CACHE_MASK ; 
 int PAGE_CACHE_SHIFT ; 
 scalar_t__ PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

void FUNC5(struct hfs_bnode *node, int off, int len)
{
	struct page **pagep;
	int l;

	off += node->page_offset;
	pagep = node->page + (off >> PAGE_CACHE_SHIFT);
	off &= ~PAGE_CACHE_MASK;

	l = FUNC3(len, (int)PAGE_CACHE_SIZE - off);
	FUNC2(FUNC0(*pagep) + off, 0, l);
	FUNC4(*pagep);
	FUNC1(*pagep);

	while ((len -= l) != 0) {
		l = FUNC3(len, (int)PAGE_CACHE_SIZE);
		FUNC2(FUNC0(*++pagep), 0, l);
		FUNC4(*pagep);
		FUNC1(*pagep);
	}
}