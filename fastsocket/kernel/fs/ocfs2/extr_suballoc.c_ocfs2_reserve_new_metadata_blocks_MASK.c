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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int /*<<< orphan*/  slot_num; } ;
struct ocfs2_alloc_context {int ac_bits_wanted; int /*<<< orphan*/  ac_group_search; int /*<<< orphan*/  ac_which; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_NEW_GROUP ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXTENT_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OCFS2_AC_USE_META ; 
 struct ocfs2_alloc_context* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ocfs2_block_group_search ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_alloc_context*) ; 
 int FUNC4 (struct ocfs2_super*,struct ocfs2_alloc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct ocfs2_super *osb,
				      int blocks,
				      struct ocfs2_alloc_context **ac)
{
	int status;
	u32 slot;

	*ac = FUNC0(sizeof(struct ocfs2_alloc_context), GFP_KERNEL);
	if (!(*ac)) {
		status = -ENOMEM;
		FUNC1(status);
		goto bail;
	}

	(*ac)->ac_bits_wanted = blocks;
	(*ac)->ac_which = OCFS2_AC_USE_META;
	slot = osb->slot_num;
	(*ac)->ac_group_search = ocfs2_block_group_search;

	status = FUNC4(osb, (*ac),
					     EXTENT_ALLOC_SYSTEM_INODE,
					     slot, NULL, ALLOC_NEW_GROUP);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC1(status);
		goto bail;
	}

	status = 0;
bail:
	if ((status < 0) && *ac) {
		FUNC3(*ac);
		*ac = NULL;
	}

	FUNC2(status);
	return status;
}