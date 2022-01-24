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
struct ocfs2_super {int slot_num; int /*<<< orphan*/  osb_lock; int /*<<< orphan*/  node_num; int /*<<< orphan*/  preferred_slot; struct ocfs2_slot_info* slot_info; } ;
struct ocfs2_slot_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 int FUNC0 (struct ocfs2_slot_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ocfs2_slot_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_slot_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ocfs2_super*,struct ocfs2_slot_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_slot_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct ocfs2_super *osb)
{
	int status;
	int slot;
	struct ocfs2_slot_info *si;

	FUNC3();

	si = osb->slot_info;

	FUNC9(&osb->osb_lock);
	FUNC8(si);

	/* search for ourselves first and take the slot if it already
	 * exists. Perhaps we need to mark this in a variable for our
	 * own journal recovery? Possibly not, though we certainly
	 * need to warn to the user */
	slot = FUNC1(si, osb->node_num);
	if (slot < 0) {
		/* if no slot yet, then just take 1st available
		 * one. */
		slot = FUNC0(si, osb->preferred_slot);
		if (slot < 0) {
			FUNC10(&osb->osb_lock);
			FUNC2(ML_ERROR, "no free slots available!\n");
			status = -EINVAL;
			goto bail;
		}
	} else
		FUNC2(ML_NOTICE, "slot %d is already allocated to this node!\n",
		     slot);

	FUNC6(si, slot, osb->node_num);
	osb->slot_num = slot;
	FUNC10(&osb->osb_lock);

	FUNC2(0, "taking node slot %d\n", osb->slot_num);

	status = FUNC7(osb, si, osb->slot_num);
	if (status < 0)
		FUNC4(status);

bail:
	FUNC5(status);
	return status;
}