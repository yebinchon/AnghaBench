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
struct ocfs2_super {int /*<<< orphan*/  osb_lock; } ;
struct ocfs2_slot_info {int /*<<< orphan*/  si_inode; scalar_t__ si_extended; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_slot_info*,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_slot_info*,int,struct buffer_head**) ; 
 int FUNC4 (struct ocfs2_super*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ocfs2_super *osb,
				  struct ocfs2_slot_info *si,
				  int slot_num)
{
	int status;
	struct buffer_head *bh;

	FUNC5(&osb->osb_lock);
	if (si->si_extended)
		FUNC2(si, slot_num, &bh);
	else
		FUNC3(si, slot_num, &bh);
	FUNC6(&osb->osb_lock);

	status = FUNC4(osb, bh, FUNC0(si->si_inode));
	if (status < 0)
		FUNC1(status);

	return status;
}