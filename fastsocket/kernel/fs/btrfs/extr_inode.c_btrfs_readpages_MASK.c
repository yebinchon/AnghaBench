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
struct list_head {int dummy; } ;
struct file {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;
struct TYPE_2__ {struct extent_io_tree io_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btrfs_get_extent ; 
 int FUNC1 (struct extent_io_tree*,struct address_space*,struct list_head*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct file *file, struct address_space *mapping,
		struct list_head *pages, unsigned nr_pages)
{
	struct extent_io_tree *tree;
	tree = &FUNC0(mapping->host)->io_tree;
	return FUNC1(tree, mapping, pages, nr_pages,
				btrfs_get_extent);
}