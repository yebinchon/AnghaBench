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
struct ocfs2_super {int max_slots; struct ocfs2_slot_info* slot_info; } ;
struct ocfs2_slot_info {int si_num_slots; struct inode* si_inode; struct ocfs2_slot* si_slots; int /*<<< orphan*/  si_extended; } ;
struct ocfs2_slot {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  SLOT_MAP_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_slot_info*) ; 
 struct ocfs2_slot_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct inode* FUNC3 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ocfs2_super*,struct ocfs2_slot_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*) ; 

int FUNC6(struct ocfs2_super *osb)
{
	int status;
	struct inode *inode = NULL;
	struct ocfs2_slot_info *si;

	si = FUNC1(sizeof(struct ocfs2_slot_info) +
		     (sizeof(struct ocfs2_slot) * osb->max_slots),
		     GFP_KERNEL);
	if (!si) {
		status = -ENOMEM;
		FUNC2(status);
		goto bail;
	}

	si->si_extended = FUNC5(osb);
	si->si_num_slots = osb->max_slots;
	si->si_slots = (struct ocfs2_slot *)((char *)si +
					     sizeof(struct ocfs2_slot_info));

	inode = FUNC3(osb, SLOT_MAP_SYSTEM_INODE,
					    OCFS2_INVALID_SLOT);
	if (!inode) {
		status = -EINVAL;
		FUNC2(status);
		goto bail;
	}

	si->si_inode = inode;
	status = FUNC4(osb, si);
	if (status < 0) {
		FUNC2(status);
		goto bail;
	}

	osb->slot_info = (struct ocfs2_slot_info *)si;
bail:
	if (status < 0 && si)
		FUNC0(si);

	return status;
}