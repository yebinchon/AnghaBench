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
struct ext4_ext_path {int p_depth; TYPE_1__* p_idx; int /*<<< orphan*/  p_hdr; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  ei_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT_MAX_BLOCKS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ext4_lblk_t FUNC3(struct inode *inode,
					struct ext4_ext_path *path)
{
	int depth;

	FUNC0(path == NULL);
	depth = path->p_depth;

	/* zero-tree has no leaf blocks at all */
	if (depth == 0)
		return EXT_MAX_BLOCKS;

	/* go to index block */
	depth--;

	while (depth >= 0) {
		if (path[depth].p_idx !=
				FUNC1(path[depth].p_hdr))
			return (ext4_lblk_t)
				FUNC2(path[depth].p_idx[1].ei_block);
		depth--;
	}

	return EXT_MAX_BLOCKS;
}