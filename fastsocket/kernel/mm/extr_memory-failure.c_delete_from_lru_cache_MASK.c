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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct page *p)
{
	if (!FUNC2(p)) {
		/*
		 * Clear sensible page flags, so that the buddy system won't
		 * complain when the page is unpoison-and-freed.
		 */
		FUNC0(p);
		FUNC1(p);
		/*
		 * drop the page count elevated by isolate_lru_page()
		 */
		FUNC3(p);
		return 0;
	}
	return -EIO;
}