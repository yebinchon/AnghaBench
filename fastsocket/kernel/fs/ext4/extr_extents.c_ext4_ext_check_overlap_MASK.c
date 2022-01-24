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
struct ext4_extent {void* ee_len; int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {TYPE_1__* p_ext; } ;
typedef  scalar_t__ ext4_lblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  ee_block; } ;

/* Variables and functions */
 scalar_t__ EXT_MAX_BLOCKS ; 
 void* FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (struct ext4_extent*) ; 
 scalar_t__ FUNC2 (struct ext4_ext_path*) ; 
 unsigned int FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

unsigned int FUNC5(struct inode *inode,
				    struct ext4_extent *newext,
				    struct ext4_ext_path *path)
{
	ext4_lblk_t b1, b2;
	unsigned int depth, len1;
	unsigned int ret = 0;

	b1 = FUNC4(newext->ee_block);
	len1 = FUNC1(newext);
	depth = FUNC3(inode);
	if (!path[depth].p_ext)
		goto out;
	b2 = FUNC4(path[depth].p_ext->ee_block);

	/*
	 * get the next allocated block if the extent in the path
	 * is before the requested block(s)
	 */
	if (b2 < b1) {
		b2 = FUNC2(path);
		if (b2 == EXT_MAX_BLOCKS)
			goto out;
	}

	/* check for wrap through zero on extent logical start block*/
	if (b1 + len1 < b1) {
		len1 = EXT_MAX_BLOCKS - b1;
		newext->ee_len = FUNC0(len1);
		ret = 1;
	}

	/* check for overlap */
	if (b1 + len1 > b2) {
		newext->ee_len = FUNC0(b2 - b1);
		ret = 1;
	}
out:
	return ret;
}