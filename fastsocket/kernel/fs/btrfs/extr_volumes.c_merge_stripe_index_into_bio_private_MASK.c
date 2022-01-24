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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void *FUNC1(void *bi_private,
						 unsigned int stripe_index)
{
	/*
	 * with single, dup, RAID0, RAID1 and RAID10, stripe_index is
	 * at most 1.
	 * The alternative solution (instead of stealing bits from the
	 * pointer) would be to allocate an intermediate structure
	 * that contains the old private pointer plus the stripe_index.
	 */
	FUNC0((((uintptr_t)bi_private) & 3) != 0);
	FUNC0(stripe_index > 3);
	return (void *)(((uintptr_t)bi_private) | stripe_index);
}