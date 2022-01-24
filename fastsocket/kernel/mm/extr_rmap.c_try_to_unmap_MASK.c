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
typedef  enum ttu_flags { ____Placeholder_ttu_flags } ttu_flags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int SWAP_MLOCK ; 
 int SWAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (struct page*,int) ; 
 int FUNC9 (struct page*,int) ; 
 int FUNC10 (struct page*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct page *page, enum ttu_flags flags)
{
	int ret;

	FUNC0(!FUNC4(page));
	FUNC6(!FUNC2(page) && FUNC5(page));

	if (FUNC11(FUNC3(page)))
		ret = FUNC10(page, flags);
	else if (FUNC1(page))
		ret = FUNC8(page, flags);
	else
		ret = FUNC9(page, flags);
	if (ret != SWAP_MLOCK && !FUNC7(page))
		ret = SWAP_SUCCESS;
	return ret;
}