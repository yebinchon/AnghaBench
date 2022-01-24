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
struct buffer_head {struct buffer_head* b_this_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct buffer_head* FUNC1 (struct page*) ; 

__attribute__((used)) static inline struct buffer_head *
FUNC2(struct page *page, unsigned int count)
{
	struct buffer_head *bh = FUNC1(page);

	while (count-- > 0)
		bh = bh->b_this_page;
	FUNC0(bh);
	return bh;
}