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
typedef  scalar_t__ u64 ;
struct extent_inode_elem {scalar_t__ offset; int /*<<< orphan*/  inum; struct extent_inode_elem* next; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_key {scalar_t__ offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_file_extent_item {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct extent_buffer*,struct btrfs_file_extent_item*) ; 
 scalar_t__ FUNC1 (struct extent_buffer*,struct btrfs_file_extent_item*) ; 
 struct extent_inode_elem* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct btrfs_key *key, struct extent_buffer *eb,
				struct btrfs_file_extent_item *fi,
				u64 extent_item_pos,
				struct extent_inode_elem **eie)
{
	u64 data_offset;
	u64 data_len;
	struct extent_inode_elem *e;

	data_offset = FUNC1(eb, fi);
	data_len = FUNC0(eb, fi);

	if (extent_item_pos < data_offset ||
	    extent_item_pos >= data_offset + data_len)
		return 1;

	e = FUNC2(sizeof(*e), GFP_NOFS);
	if (!e)
		return -ENOMEM;

	e->next = *eie;
	e->inum = key->objectid;
	e->offset = key->offset + (extent_item_pos - data_offset);
	*eie = e;

	return 0;
}