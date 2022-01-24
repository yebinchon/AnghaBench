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
struct ext4_ext_cache {scalar_t__ ec_len; int /*<<< orphan*/  ec_start; int /*<<< orphan*/  ec_block; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_block_reservation_lock; struct ext4_ext_cache i_cached_extent; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_ext_cache*,struct ext4_ext_cache*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, ext4_lblk_t block,
	struct ext4_ext_cache *ex){
	struct ext4_ext_cache *cex;
	int ret = 0;

	/* 
	 * We borrow i_block_reservation_lock to protect i_cached_extent
	 */
	FUNC4(&FUNC0(inode)->i_block_reservation_lock);
	cex = &FUNC0(inode)->i_cached_extent;

	/* has cache valid data? */
	if (cex->ec_len == 0)
		goto errout;

	if (FUNC2(block, cex->ec_block, cex->ec_len)) {
		FUNC3(ex, cex, sizeof(struct ext4_ext_cache));
		FUNC1("%u cached by %u:%u:%llu\n",
				block,
				cex->ec_block, cex->ec_len, cex->ec_start);
		ret = 1;
	}
errout:
	FUNC5(&FUNC0(inode)->i_block_reservation_lock);
	return ret;
}