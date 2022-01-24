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
struct page {int /*<<< orphan*/  slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (void const*) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC4 (void const*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct page*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void const*) ; 
 scalar_t__ FUNC8 (int) ; 
 struct page* FUNC9 (void const*) ; 

void FUNC10(const void *x)
{
	struct page *page;
	void *object = (void *)x;

	FUNC7(_RET_IP_, x);

	if (FUNC8(FUNC3(x)))
		return;

	page = FUNC9(x);
	if (FUNC8(!FUNC2(page))) {
		FUNC0(!FUNC1(page));
		FUNC4(x);
		FUNC5(page);
		return;
	}
	FUNC6(page->slab, page, object, _RET_IP_);
}