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
struct page_collect {unsigned int length; int /*<<< orphan*/  nr_pages; int /*<<< orphan*/  bio; int /*<<< orphan*/  req_q; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct page_collect *pcol, struct page *page,
			 unsigned len)
{
	int added_len = FUNC0(pcol->req_q, pcol->bio, page, len, 0);
	if (FUNC1(len != added_len))
		return -ENOMEM;

	++pcol->nr_pages;
	pcol->length += len;
	return 0;
}