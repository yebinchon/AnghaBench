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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 struct page* FUNC5 (void*) ; 

__attribute__((used)) static inline void FUNC6(void *addr, int clear_nosave_free)
{
	struct page *page;

	FUNC0(!FUNC4(addr));

	page = FUNC5(addr);

	FUNC2(page);
	if (clear_nosave_free)
		FUNC3(page);

	FUNC1(page);
}