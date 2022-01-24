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
struct buffer_head {char* b_data; struct page* b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 char* FUNC2 (struct page*) ; 

void FUNC3(struct buffer_head *bh,
		struct page *page, unsigned long offset)
{
	bh->b_page = page;
	FUNC0(offset >= PAGE_SIZE);
	if (FUNC1(page))
		/*
		 * This catches illegal uses and preserves the offset:
		 */
		bh->b_data = (char *)(0 + offset);
	else
		bh->b_data = FUNC2(page) + offset;
}