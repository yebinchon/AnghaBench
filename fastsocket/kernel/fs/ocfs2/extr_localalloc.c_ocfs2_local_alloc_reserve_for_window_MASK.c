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
struct ocfs2_super {int /*<<< orphan*/  local_alloc_bits; } ;
struct ocfs2_alloc_context {struct buffer_head* ac_bh; struct inode* ac_inode; int /*<<< orphan*/  ac_bits_wanted; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ OCFS2_LA_DISABLED ; 
 int /*<<< orphan*/  OCFS2_LA_EVENT_ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct ocfs2_alloc_context* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_alloc_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_alloc_context*) ; 
 scalar_t__ FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ocfs2_super*,struct ocfs2_alloc_context*) ; 

__attribute__((used)) static int FUNC10(struct ocfs2_super *osb,
						struct ocfs2_alloc_context **ac,
						struct inode **bitmap_inode,
						struct buffer_head **bitmap_bh)
{
	int status;

	*ac = FUNC2(sizeof(struct ocfs2_alloc_context), GFP_KERNEL);
	if (!(*ac)) {
		status = -ENOMEM;
		FUNC4(status);
		goto bail;
	}

retry_enospc:
	(*ac)->ac_bits_wanted = osb->local_alloc_bits;

	status = FUNC9(osb, *ac);
	if (status == -ENOSPC) {
		if (FUNC8(osb, OCFS2_LA_EVENT_ENOSPC) ==
		    OCFS2_LA_DISABLED)
			goto bail;

		FUNC6(*ac);
		FUNC3(*ac, 0, sizeof(struct ocfs2_alloc_context));
		goto retry_enospc;
	}
	if (status < 0) {
		FUNC4(status);
		goto bail;
	}

	*bitmap_inode = (*ac)->ac_inode;
	FUNC1(*bitmap_inode);
	*bitmap_bh = (*ac)->ac_bh;
	FUNC0(*bitmap_bh);
	status = 0;
bail:
	if ((status < 0) && *ac) {
		FUNC7(*ac);
		*ac = NULL;
	}

	FUNC5(status);
	return status;
}