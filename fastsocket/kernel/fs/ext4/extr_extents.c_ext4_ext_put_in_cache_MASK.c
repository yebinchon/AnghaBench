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
struct inode {int dummy; } ;
struct ext4_ext_cache {int /*<<< orphan*/  ec_start; scalar_t__ ec_len; int /*<<< orphan*/  ec_block; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  i_block_reservation_lock; struct ext4_ext_cache i_cached_extent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct inode *inode, ext4_lblk_t block,
			__u32 len, ext4_fsblk_t start)
{
	struct ext4_ext_cache *cex;
	FUNC0(len == 0);
	FUNC2(&FUNC1(inode)->i_block_reservation_lock);
	cex = &FUNC1(inode)->i_cached_extent;
	cex->ec_block = block;
	cex->ec_len = len;
	cex->ec_start = start;
	FUNC3(&FUNC1(inode)->i_block_reservation_lock);
}