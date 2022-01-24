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
struct group_info {int ngroups; int nblocks; int /*<<< orphan*/ ** blocks; int /*<<< orphan*/ * small_block; int /*<<< orphan*/  usage; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_USER ; 
 int NGROUPS_PER_BLOCK ; 
 int NGROUPS_SMALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct group_info*) ; 
 struct group_info* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct group_info *FUNC5(int gidsetsize)
{
	struct group_info *group_info;
	int nblocks;
	int i;

	nblocks = (gidsetsize + NGROUPS_PER_BLOCK - 1) / NGROUPS_PER_BLOCK;
	/* Make sure we always allocate at least one indirect block pointer */
	nblocks = nblocks ? : 1;
	group_info = FUNC4(sizeof(*group_info) + nblocks*sizeof(gid_t *), GFP_USER);
	if (!group_info)
		return NULL;
	group_info->ngroups = gidsetsize;
	group_info->nblocks = nblocks;
	FUNC1(&group_info->usage, 1);

	if (gidsetsize <= NGROUPS_SMALL)
		group_info->blocks[0] = group_info->small_block;
	else {
		for (i = 0; i < nblocks; i++) {
			gid_t *b;
			b = (void *)FUNC0(GFP_USER);
			if (!b)
				goto out_undo_partial_alloc;
			group_info->blocks[i] = b;
		}
	}
	return group_info;

out_undo_partial_alloc:
	while (--i >= 0) {
		FUNC2((unsigned long)group_info->blocks[i]);
	}
	FUNC3(group_info);
	return NULL;
}