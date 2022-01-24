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
struct buffer_head {int b_size; } ;
struct block_head {int dummy; } ;

/* Variables and functions */
 int BLKH_SIZE ; 
 struct block_head* FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct buffer_head*) ; 
 int DC_SIZE ; 
 scalar_t__ DISK_LEAF_NODE_LEVEL ; 
 int IH_SIZE ; 
 int KEY_SIZE ; 
 scalar_t__ MAX_HEIGHT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,struct buffer_head*) ; 

__attribute__((used)) static void FUNC5(struct buffer_head *bh)
{
	struct block_head *blkh;

	blkh = FUNC0(bh);
	if (!(FUNC2(bh) > DISK_LEAF_NODE_LEVEL && FUNC2(bh) <= MAX_HEIGHT))
		FUNC4(NULL, "vs-6025", "invalid level %z", bh);

	if (FUNC3(bh) > (bh->b_size - BLKH_SIZE) / IH_SIZE)
		FUNC4(NULL, "vs-6030", "invalid item number %z", bh);

	if (FUNC1(bh) !=
	    bh->b_size - BLKH_SIZE - KEY_SIZE * FUNC3(bh) -
	    DC_SIZE * (FUNC3(bh) + 1))
		FUNC4(NULL, "vs-6040", "invalid free space %z", bh);

}