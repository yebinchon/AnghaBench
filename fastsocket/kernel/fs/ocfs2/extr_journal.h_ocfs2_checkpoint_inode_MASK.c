#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {TYPE_1__* journal; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  j_checkpointed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct inode *inode)
{
	struct ocfs2_super *osb = FUNC1(inode->i_sb);

	if (FUNC3(osb))
		return;

	if (!FUNC2(FUNC0(inode))) {
		/* WARNING: This only kicks off a single
		 * checkpoint. If someone races you and adds more
		 * metadata to the journal, you won't know, and will
		 * wind up waiting *alot* longer than necessary. Right
		 * now we only use this in clear_inode so that's
		 * OK. */
		FUNC4(osb);

		FUNC5(osb->journal->j_checkpointed,
			   FUNC2(FUNC0(inode)));
	}
}