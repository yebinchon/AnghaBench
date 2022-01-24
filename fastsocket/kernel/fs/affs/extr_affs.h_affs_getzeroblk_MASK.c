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
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
struct TYPE_2__ {int s_reserved; int s_partition_size; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct buffer_head* FUNC4 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static inline struct buffer_head *
FUNC7(struct super_block *sb, int block)
{
	struct buffer_head *bh;
	FUNC3("affs_getzeroblk: %d\n", block);
	if (block >= FUNC0(sb)->s_reserved && block < FUNC0(sb)->s_partition_size) {
		bh = FUNC4(sb, block);
		FUNC1(bh);
		FUNC2(bh->b_data, 0 , sb->s_blocksize);
		FUNC5(bh);
		FUNC6(bh);
		return bh;
	}
	return NULL;
}