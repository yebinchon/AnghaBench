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
 int /*<<< orphan*/  FUNC2 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(struct page *page, unsigned long offset)
{
	/*
	 * Drop reserved blocks
	 */
	FUNC0(!FUNC1(page));
	if (!FUNC4(page))
		goto out;

	FUNC2(page, offset);

out:
	FUNC3(page, offset);

	return;
}