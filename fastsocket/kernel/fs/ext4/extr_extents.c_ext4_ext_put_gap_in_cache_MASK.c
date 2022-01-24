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
struct inode {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long EXT_MAX_BLOCKS ; 
 scalar_t__ FUNC2 (struct ext4_extent*) ; 
 scalar_t__ FUNC3 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct inode *inode, struct ext4_ext_path *path,
				ext4_lblk_t block)
{
	int depth = FUNC6(inode);
	unsigned long len;
	ext4_lblk_t lblock;
	struct ext4_extent *ex;

	ex = path[depth].p_ext;
	if (ex == NULL) {
		/* there is no extent yet, so gap is [0;-] */
		lblock = 0;
		len = EXT_MAX_BLOCKS;
		FUNC5("cache gap(whole file):");
	} else if (block < FUNC7(ex->ee_block)) {
		lblock = block;
		len = FUNC7(ex->ee_block) - block;
		FUNC5("cache gap(before): %u [%u:%u]",
				block,
				FUNC7(ex->ee_block),
				 FUNC2(ex));
	} else if (block >= FUNC7(ex->ee_block)
			+ FUNC2(ex)) {
		ext4_lblk_t next;
		lblock = FUNC7(ex->ee_block)
			+ FUNC2(ex);

		next = FUNC3(path);
		FUNC5("cache gap(after): [%u:%u] %u",
				FUNC7(ex->ee_block),
				FUNC2(ex),
				block);
		FUNC1(next == lblock);
		len = next - lblock;
	} else {
		lblock = len = 0;
		FUNC0();
	}

	FUNC5(" -> %u:%lu\n", lblock, len);
	FUNC4(inode, lblock, len, 0);
}