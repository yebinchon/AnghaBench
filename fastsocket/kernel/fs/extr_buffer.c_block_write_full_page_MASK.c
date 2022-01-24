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
typedef  int /*<<< orphan*/  get_block_t ;

/* Variables and functions */
 int FUNC0 (struct page*,int /*<<< orphan*/ *,struct writeback_control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  end_buffer_async_write ; 

int FUNC1(struct page *page, get_block_t *get_block,
			struct writeback_control *wbc)
{
	return FUNC0(page, get_block, wbc,
					   end_buffer_async_write);
}