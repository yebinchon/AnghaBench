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
struct super_block {int s_blocksize; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(struct super_block *sb, int size)
{
	if (FUNC1(sb->s_bdev, size))
		return 0;
	/* If we get here, we know size is power of two
	 * and it's value is between 512 and PAGE_SIZE */
	sb->s_blocksize = size;
	sb->s_blocksize_bits = FUNC0(size);
	return sb->s_blocksize;
}