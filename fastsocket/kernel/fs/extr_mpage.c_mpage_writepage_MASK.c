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
struct mpage_data {int /*<<< orphan*/ * bio; int /*<<< orphan*/  use_writepage; int /*<<< orphan*/  get_block; int /*<<< orphan*/  last_block_in_bio; } ;
typedef  int /*<<< orphan*/  get_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  WRITE ; 
 int FUNC0 (struct page*,struct writeback_control*,struct mpage_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct page *page, get_block_t get_block,
	struct writeback_control *wbc)
{
	struct mpage_data mpd = {
		.bio = NULL,
		.last_block_in_bio = 0,
		.get_block = get_block,
		.use_writepage = 0,
	};
	int ret = FUNC0(page, wbc, &mpd);
	if (mpd.bio)
		FUNC1(WRITE, mpd.bio);
	return ret;
}