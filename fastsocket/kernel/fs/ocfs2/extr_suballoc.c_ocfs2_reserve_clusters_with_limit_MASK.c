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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_alloc_context {int /*<<< orphan*/  ac_max_block; int /*<<< orphan*/  ac_bits_wanted; } ;

/* Variables and functions */
 int ALLOC_GROUPS_FROM_GLOBAL ; 
 int EFBIG ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ocfs2_alloc_context* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_alloc_context*) ; 
 int FUNC6 (struct ocfs2_super*,struct ocfs2_alloc_context*) ; 
 int FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ ,struct ocfs2_alloc_context*) ; 

__attribute__((used)) static int FUNC8(struct ocfs2_super *osb,
					     u32 bits_wanted, u64 max_block,
					     int flags,
					     struct ocfs2_alloc_context **ac)
{
	int status;

	FUNC1();

	*ac = FUNC0(sizeof(struct ocfs2_alloc_context), GFP_KERNEL);
	if (!(*ac)) {
		status = -ENOMEM;
		FUNC2(status);
		goto bail;
	}

	(*ac)->ac_bits_wanted = bits_wanted;
	(*ac)->ac_max_block = max_block;

	status = -ENOSPC;
	if (!(flags & ALLOC_GROUPS_FROM_GLOBAL) &&
	    FUNC4(osb, bits_wanted)) {
		status = FUNC7(osb,
							bits_wanted,
							*ac);
		if (status == -EFBIG) {
			/* The local alloc window is outside ac_max_block.
			 * use the main bitmap. */
			status = -ENOSPC;
		} else if ((status < 0) && (status != -ENOSPC)) {
			FUNC2(status);
			goto bail;
		}
	}

	if (status == -ENOSPC) {
		status = FUNC6(osb, *ac);
		if (status < 0) {
			if (status != -ENOSPC)
				FUNC2(status);
			goto bail;
		}
	}

	status = 0;
bail:
	if ((status < 0) && *ac) {
		FUNC5(*ac);
		*ac = NULL;
	}

	FUNC3(status);
	return status;
}