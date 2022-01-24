#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
struct TYPE_6__ {TYPE_2__* BitMap; } ;
struct TYPE_4__ {int /*<<< orphan*/  xtnt_blk; } ;
struct TYPE_5__ {int /*<<< orphan*/  di_size; TYPE_1__ di_first_xtnt; } ;

/* Variables and functions */
 scalar_t__ QNX4_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_3__* FUNC4 (struct super_block*) ; 
 struct buffer_head* FUNC5 (struct super_block*,int) ; 

unsigned long FUNC6(struct super_block *sb)
{
	int start = FUNC2(FUNC4(sb)->BitMap->di_first_xtnt.xtnt_blk) - 1;
	int total = 0;
	int total_free = 0;
	int offset = 0;
	int size = FUNC2(FUNC4(sb)->BitMap->di_size);
	struct buffer_head *bh;

	while (total < size) {
		if ((bh = FUNC5(sb, start + offset)) == NULL) {
			FUNC3("qnx4: I/O error in counting free blocks\n");
			break;
		}
		FUNC1(bh->b_data, size - total, &total_free);
		FUNC0(bh);
		total += QNX4_BLOCK_SIZE;
		offset++;
	}

	return total_free;
}