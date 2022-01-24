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
struct ocfs2_super {scalar_t__ slot_num; int max_slots; } ;
struct ocfs2_alloc_context {int dummy; } ;
typedef  scalar_t__ s16 ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  INODE_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  NOT_ALLOC_NEW_GROUP ; 
 scalar_t__ OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_alloc_context*) ; 
 scalar_t__ FUNC1 (struct ocfs2_super*) ; 
 int FUNC2 (struct ocfs2_super*,struct ocfs2_alloc_context*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_super*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_super *osb,
					      struct ocfs2_alloc_context *ac)
{
	int i, status = -ENOSPC;
	s16 slot = FUNC1(osb);

	/* Start to steal inodes from the first slot after ours. */
	if (slot == OCFS2_INVALID_SLOT)
		slot = osb->slot_num + 1;

	for (i = 0; i < osb->max_slots; i++, slot++) {
		if (slot == osb->max_slots)
			slot = 0;

		if (slot == osb->slot_num)
			continue;

		status = FUNC2(osb, ac,
						     INODE_ALLOC_SYSTEM_INODE,
						     slot, NULL,
						     NOT_ALLOC_NEW_GROUP);
		if (status >= 0) {
			FUNC3(osb, slot);
			break;
		}

		FUNC0(ac);
	}

	return status;
}