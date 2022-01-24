#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ext4_ext_path {int p_depth; TYPE_1__* p_idx; int /*<<< orphan*/  p_hdr; TYPE_2__* p_ext; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
struct TYPE_4__ {int /*<<< orphan*/  ee_block; } ;
struct TYPE_3__ {int /*<<< orphan*/  ei_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT_MAX_BLOCKS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ext4_lblk_t
FUNC4(struct ext4_ext_path *path)
{
	int depth;

	FUNC0(path == NULL);
	depth = path->p_depth;

	if (depth == 0 && path->p_ext == NULL)
		return EXT_MAX_BLOCKS;

	while (depth >= 0) {
		if (depth == path->p_depth) {
			/* leaf */
			if (path[depth].p_ext &&
				path[depth].p_ext !=
					FUNC1(path[depth].p_hdr))
			  return FUNC3(path[depth].p_ext[1].ee_block);
		} else {
			/* index */
			if (path[depth].p_idx !=
					FUNC2(path[depth].p_hdr))
			  return FUNC3(path[depth].p_idx[1].ei_block);
		}
		depth--;
	}

	return EXT_MAX_BLOCKS;
}