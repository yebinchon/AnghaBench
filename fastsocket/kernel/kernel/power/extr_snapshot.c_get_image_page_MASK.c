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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  allocated_unsafe_pages ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static void *FUNC5(gfp_t gfp_mask, int safe_needed)
{
	void *res;

	res = (void *)FUNC0(gfp_mask);
	if (safe_needed)
		while (res && FUNC1(FUNC4(res))) {
			/* The page is unsafe, mark it for swsusp_free() */
			FUNC2(FUNC4(res));
			allocated_unsafe_pages++;
			res = (void *)FUNC0(gfp_mask);
		}
	if (res) {
		FUNC2(FUNC4(res));
		FUNC3(FUNC4(res));
	}
	return res;
}