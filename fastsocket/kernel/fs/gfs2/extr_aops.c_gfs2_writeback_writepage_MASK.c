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
 int EAGAIN ; 
 int FUNC0 (struct page*,int /*<<< orphan*/ ,struct writeback_control*) ; 
 int /*<<< orphan*/  gfs2_get_block_noalloc ; 
 int FUNC1 (struct page*,struct writeback_control*) ; 
 int FUNC2 (struct page*,int /*<<< orphan*/ ,struct writeback_control*) ; 

__attribute__((used)) static int FUNC3(struct page *page,
				    struct writeback_control *wbc)
{
	int ret;

	ret = FUNC1(page, wbc);
	if (ret <= 0)
		return ret;

	ret = FUNC2(page, gfs2_get_block_noalloc, wbc);
	if (ret == -EAGAIN)
		ret = FUNC0(page, gfs2_get_block_noalloc, wbc);
	return ret;
}