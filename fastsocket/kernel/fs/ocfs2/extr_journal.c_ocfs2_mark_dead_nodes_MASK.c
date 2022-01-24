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
struct ocfs2_super {int max_slots; int slot_num; int /*<<< orphan*/  osb_lock; int /*<<< orphan*/ * slot_recovery_generations; } ;
struct ocfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ocfs2_super*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_dinode*) ; 
 int FUNC6 (struct ocfs2_super*,int,struct buffer_head**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*,unsigned int) ; 
 int FUNC8 (struct ocfs2_super*,int,unsigned int*) ; 
 int FUNC9 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct ocfs2_super *osb)
{
	unsigned int node_num;
	int status, i;
	u32 gen;
	struct buffer_head *bh = NULL;
	struct ocfs2_dinode *di;

	/* This is called with the super block cluster lock, so we
	 * know that the slot map can't change underneath us. */

	for (i = 0; i < osb->max_slots; i++) {
		/* Read journal inode to get the recovery generation */
		status = FUNC6(osb, i, &bh, NULL);
		if (status) {
			FUNC3(status);
			goto bail;
		}
		di = (struct ocfs2_dinode *)bh->b_data;
		gen = FUNC5(di);
		FUNC1(bh);
		bh = NULL;

		FUNC10(&osb->osb_lock);
		osb->slot_recovery_generations[i] = gen;

		FUNC2(0, "Slot %u recovery generation is %u\n", i,
		     osb->slot_recovery_generations[i]);

		if (i == osb->slot_num) {
			FUNC11(&osb->osb_lock);
			continue;
		}

		status = FUNC8(osb, i, &node_num);
		if (status == -ENOENT) {
			FUNC11(&osb->osb_lock);
			continue;
		}

		if (FUNC0(osb, node_num)) {
			FUNC11(&osb->osb_lock);
			continue;
		}
		FUNC11(&osb->osb_lock);

		/* Ok, we have a slot occupied by another node which
		 * is not in the recovery map. We trylock his journal
		 * file here to test if he's alive. */
		status = FUNC9(osb, i);
		if (!status) {
			/* Since we're called from mount, we know that
			 * the recovery thread can't race us on
			 * setting / checking the recovery bits. */
			FUNC7(osb, node_num);
		} else if ((status < 0) && (status != -EAGAIN)) {
			FUNC3(status);
			goto bail;
		}
	}

	status = 0;
bail:
	FUNC4(status);
	return status;
}