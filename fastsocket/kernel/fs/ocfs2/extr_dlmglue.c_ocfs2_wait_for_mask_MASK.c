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
struct ocfs2_mask_waiter {int mw_status; int /*<<< orphan*/  mw_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ocfs2_mask_waiter *mw)
{
	FUNC1(&mw->mw_complete);
	/* Re-arm the completion in case we want to wait on it again */
	FUNC0(mw->mw_complete);
	return mw->mw_status;
}