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
struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct buffer_head* FUNC1 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

void FUNC6(struct block_device *bdev, sector_t block)
{
	struct buffer_head *old_bh;

	FUNC4();

	old_bh = FUNC1(bdev, block);
	if (old_bh) {
		FUNC2(old_bh);
		FUNC5(old_bh);
		FUNC3(old_bh);
		FUNC0(old_bh);
	}
}