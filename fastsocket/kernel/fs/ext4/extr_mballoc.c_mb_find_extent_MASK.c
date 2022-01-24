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
struct ext4_free_extent {int fe_len; int fe_start; scalar_t__ fe_group; } ;
struct ext4_buddy {int bd_blkbits; scalar_t__ bd_group; int /*<<< orphan*/  bd_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (struct ext4_buddy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 void* FUNC5 (struct ext4_buddy*,int,int*) ; 
 int FUNC6 (struct ext4_buddy*,int) ; 
 scalar_t__ FUNC7 (int,void*) ; 

__attribute__((used)) static int FUNC8(struct ext4_buddy *e4b, int order, int block,
				int needed, struct ext4_free_extent *ex)
{
	int next = block;
	int max;
	int ord;
	void *buddy;

	FUNC2(FUNC3(e4b->bd_sb, e4b->bd_group));
	FUNC0(ex == NULL);

	buddy = FUNC5(e4b, order, &max);
	FUNC0(buddy == NULL);
	FUNC0(block >= max);
	if (FUNC7(block, buddy)) {
		ex->fe_len = 0;
		ex->fe_start = 0;
		ex->fe_group = 0;
		return 0;
	}

	/* FIXME dorp order completely ? */
	if (FUNC4(order == 0)) {
		/* find actual order */
		order = FUNC6(e4b, block);
		block = block >> order;
	}

	ex->fe_len = 1 << order;
	ex->fe_start = block << order;
	ex->fe_group = e4b->bd_group;

	/* calc difference from given start */
	next = next - ex->fe_start;
	ex->fe_len -= next;
	ex->fe_start += next;

	while (needed > ex->fe_len &&
	       (buddy = FUNC5(e4b, order, &max))) {

		if (block + 1 >= max)
			break;

		next = (block + 1) * (1 << order);
		if (FUNC7(next, FUNC1(e4b)))
			break;

		ord = FUNC6(e4b, next);

		order = ord;
		block = next >> order;
		ex->fe_len += 1 << order;
	}

	FUNC0(ex->fe_start + ex->fe_len > (1 << (e4b->bd_blkbits + 3)));
	return ex->fe_len;
}