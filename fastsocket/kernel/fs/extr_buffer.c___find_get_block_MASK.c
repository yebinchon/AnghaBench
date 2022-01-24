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
 struct buffer_head* FUNC0 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct buffer_head* FUNC2 (struct block_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 

struct buffer_head *
FUNC4(struct block_device *bdev, sector_t block, unsigned size)
{
	struct buffer_head *bh = FUNC2(bdev, block, size);

	if (bh == NULL) {
		bh = FUNC0(bdev, block);
		if (bh)
			FUNC1(bh);
	}
	if (bh)
		FUNC3(bh);
	return bh;
}