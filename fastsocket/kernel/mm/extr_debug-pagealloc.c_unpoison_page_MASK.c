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
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 void* FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static void FUNC6(struct page *page)
{
	if (FUNC0(page)) {
		FUNC5(page);
		return;
	}
	if (FUNC4(page)) {
		void *addr = FUNC3(page);

		FUNC1(addr, PAGE_SIZE);
		FUNC2(page);
	}
}