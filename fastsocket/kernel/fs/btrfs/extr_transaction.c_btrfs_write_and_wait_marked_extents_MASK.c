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
struct extent_io_tree {int dummy; } ;
struct btrfs_root {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_root*,struct extent_io_tree*,int) ; 
 int FUNC1 (struct btrfs_root*,struct extent_io_tree*,int) ; 

int FUNC2(struct btrfs_root *root,
				struct extent_io_tree *dirty_pages, int mark)
{
	int ret;
	int ret2;

	ret = FUNC1(root, dirty_pages, mark);
	ret2 = FUNC0(root, dirty_pages, mark);

	if (ret)
		return ret;
	if (ret2)
		return ret2;
	return 0;
}