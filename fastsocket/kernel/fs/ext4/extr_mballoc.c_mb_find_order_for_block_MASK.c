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
struct ext4_buddy {int bd_blkbits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (struct ext4_buddy*) ; 
 void* FUNC2 (struct ext4_buddy*) ; 
 int /*<<< orphan*/  FUNC3 (int,void*) ; 

__attribute__((used)) static int FUNC4(struct ext4_buddy *e4b, int block)
{
	int order = 1;
	void *bb;

	FUNC0(FUNC1(e4b) == FUNC2(e4b));
	FUNC0(block >= (1 << (e4b->bd_blkbits + 3)));

	bb = FUNC2(e4b);
	while (order <= e4b->bd_blkbits + 1) {
		block = block >> 1;
		if (!FUNC3(block, bb)) {
			/* this block is part of buddy of order 'order' */
			return order;
		}
		bb += 1 << (e4b->bd_blkbits - order);
		order++;
	}
	return 0;
}