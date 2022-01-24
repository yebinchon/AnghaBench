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
typedef  scalar_t__ u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_stripe {int dummy; } ;
struct btrfs_chunk {int dummy; } ;
struct btrfs_balance_args {int flags; scalar_t__ devid; scalar_t__ pend; scalar_t__ pstart; } ;

/* Variables and functions */
 int BTRFS_BALANCE_ARGS_DEVID ; 
 int BTRFS_BLOCK_GROUP_DUP ; 
 int BTRFS_BLOCK_GROUP_RAID1 ; 
 int BTRFS_BLOCK_GROUP_RAID10 ; 
 scalar_t__ FUNC0 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int FUNC1 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int FUNC2 (struct extent_buffer*,struct btrfs_chunk*) ; 
 scalar_t__ FUNC3 (struct extent_buffer*,struct btrfs_stripe*) ; 
 struct btrfs_stripe* FUNC4 (struct btrfs_chunk*,int) ; 
 scalar_t__ FUNC5 (struct extent_buffer*,struct btrfs_stripe*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC7(struct extent_buffer *leaf,
			       struct btrfs_chunk *chunk,
			       u64 chunk_offset,
			       struct btrfs_balance_args *bargs)
{
	struct btrfs_stripe *stripe;
	int num_stripes = FUNC1(leaf, chunk);
	u64 stripe_offset;
	u64 stripe_length;
	int factor;
	int i;

	if (!(bargs->flags & BTRFS_BALANCE_ARGS_DEVID))
		return 0;

	if (FUNC2(leaf, chunk) & (BTRFS_BLOCK_GROUP_DUP |
	     BTRFS_BLOCK_GROUP_RAID1 | BTRFS_BLOCK_GROUP_RAID10))
		factor = 2;
	else
		factor = 1;
	factor = num_stripes / factor;

	for (i = 0; i < num_stripes; i++) {
		stripe = FUNC4(chunk, i);
		if (FUNC3(leaf, stripe) != bargs->devid)
			continue;

		stripe_offset = FUNC5(leaf, stripe);
		stripe_length = FUNC0(leaf, chunk);
		FUNC6(stripe_length, factor);

		if (stripe_offset < bargs->pend &&
		    stripe_offset + stripe_length > bargs->pstart)
			return 0;
	}

	return 1;
}