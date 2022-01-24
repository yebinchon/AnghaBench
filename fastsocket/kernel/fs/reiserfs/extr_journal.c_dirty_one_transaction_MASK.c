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
struct super_block {int dummy; } ;
struct reiserfs_journal_list {struct reiserfs_journal_cnode* j_realblock; int /*<<< orphan*/  j_state; } ;
struct reiserfs_journal_cnode {struct reiserfs_journal_cnode* next; scalar_t__ bh; scalar_t__ blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LIST_DIRTY ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct reiserfs_journal_cnode*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct reiserfs_journal_list* FUNC5 (struct reiserfs_journal_cnode*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct super_block *s,
				 struct reiserfs_journal_list *jl)
{
	struct reiserfs_journal_cnode *cn;
	struct reiserfs_journal_list *pjl;
	int ret = 0;

	jl->j_state |= LIST_DIRTY;
	cn = jl->j_realblock;
	while (cn) {
		/* look for a more recent transaction that logged this
		 ** buffer.  Only the most recent transaction with a buffer in
		 ** it is allowed to send that buffer to disk
		 */
		pjl = FUNC5(cn);
		if (!pjl && cn->blocknr && cn->bh
		    && FUNC1(cn->bh)) {
			FUNC0(!FUNC3(cn));
			/* if the buffer is prepared, it will either be logged
			 * or restored.  If restored, we need to make sure
			 * it actually gets marked dirty
			 */
			FUNC4(cn->bh);
			if (FUNC2(cn->bh)) {
				FUNC7(cn->bh);
			} else {
				FUNC8(cn->bh);
				FUNC6(cn->bh);
			}
		}
		cn = cn->next;
	}
	return ret;
}