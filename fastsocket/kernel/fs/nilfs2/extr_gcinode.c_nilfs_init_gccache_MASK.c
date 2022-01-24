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
struct the_nilfs {int /*<<< orphan*/ * ns_gc_inodes_h; int /*<<< orphan*/  ns_gc_inodes; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int NILFS_GCINODE_HASH_SIZE ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct the_nilfs *nilfs)
{
	int loop;

	FUNC0(nilfs->ns_gc_inodes_h);

	FUNC2(&nilfs->ns_gc_inodes);

	nilfs->ns_gc_inodes_h =
		FUNC3(sizeof(struct hlist_head) * NILFS_GCINODE_HASH_SIZE,
			GFP_NOFS);
	if (nilfs->ns_gc_inodes_h == NULL)
		return -ENOMEM;

	for (loop = 0; loop < NILFS_GCINODE_HASH_SIZE; loop++)
		FUNC1(&nilfs->ns_gc_inodes_h[loop]);
	return 0;
}