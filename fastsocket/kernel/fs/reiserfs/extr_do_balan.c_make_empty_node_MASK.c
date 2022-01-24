#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct buffer_info {int /*<<< orphan*/  bi_position; scalar_t__ bi_parent; int /*<<< orphan*/ * bi_bh; } ;
struct block_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ dc_size; } ;

/* Variables and functions */
 struct block_head* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct block_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct block_head*,int /*<<< orphan*/ ) ; 

void FUNC6(struct buffer_info *bi)
{
	struct block_head *blkh;

	FUNC3(bi->bi_bh == NULL, "PAP-12295: pointer to the buffer is NULL");

	blkh = FUNC0(bi->bi_bh);
	FUNC5(blkh, 0);
	FUNC4(blkh, FUNC2(bi->bi_bh));

	if (bi->bi_parent)
		FUNC1(bi->bi_parent, bi->bi_position)->dc_size = 0;	/* Endian safe if 0 */
}