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
struct extent_buffer {int dummy; } ;
struct btrfs_root {scalar_t__ ref_cows; int /*<<< orphan*/  root_item; struct extent_buffer* commit_root; struct extent_buffer* node; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_HEADER_FLAG_RELOC ; 
 scalar_t__ BTRFS_MIXED_BACKREF_REV ; 
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 scalar_t__ FUNC1 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct extent_buffer*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct btrfs_root *root,
			      struct extent_buffer *buf)
{
	/*
	 * Tree blocks not in refernece counted trees and tree roots
	 * are never shared. If a block was allocated after the last
	 * snapshot and the block was not allocated by tree relocation,
	 * we know the block is not shared.
	 */
	if (root->ref_cows &&
	    buf != root->node && buf != root->commit_root &&
	    (FUNC2(buf) <=
	     FUNC3(&root->root_item) ||
	     FUNC1(buf, BTRFS_HEADER_FLAG_RELOC)))
		return 1;
#ifdef BTRFS_COMPAT_EXTENT_TREE_V0
	if (root->ref_cows &&
	    btrfs_header_backref_rev(buf) < BTRFS_MIXED_BACKREF_REV)
		return 1;
#endif
	return 0;
}