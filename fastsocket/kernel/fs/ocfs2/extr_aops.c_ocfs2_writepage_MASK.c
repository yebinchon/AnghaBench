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
struct writeback_control {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct page*,int /*<<< orphan*/ ,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ocfs2_get_block ; 

__attribute__((used)) static int FUNC3(struct page *page, struct writeback_control *wbc)
{
	int ret;

	FUNC1("(0x%p)\n", page);

	ret = FUNC0(page, ocfs2_get_block, wbc);

	FUNC2(ret);

	return ret;
}