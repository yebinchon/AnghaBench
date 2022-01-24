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
struct reiserfs_journal_list {scalar_t__ j_len; struct reiserfs_journal_cnode* j_realblock; int /*<<< orphan*/  j_nonzerolen; int /*<<< orphan*/  j_state; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* next; struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;
struct buffer_chunk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LIST_TOUCHED ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_chunk*,struct buffer_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct reiserfs_journal_cnode*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct reiserfs_journal_list*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  write_chunk ; 

__attribute__((used)) static int FUNC13(struct super_block *s,
				 struct reiserfs_journal_list *jl,
				 struct buffer_chunk *chunk)
{
	struct reiserfs_journal_cnode *cn;
	int ret = 0;

	jl->j_state |= LIST_TOUCHED;
	FUNC8(s, jl);
	if (jl->j_len == 0 || FUNC2(&jl->j_nonzerolen) == 0) {
		return 0;
	}

	cn = jl->j_realblock;
	while (cn) {
		/* if the blocknr == 0, this has been cleared from the hash,
		 ** skip it
		 */
		if (cn->blocknr == 0) {
			goto next;
		}
		if (cn->bh && FUNC6(cn) && FUNC3(cn->bh)) {
			struct buffer_head *tmp_bh;
			/* we can race against journal_mark_freed when we try
			 * to lock_buffer(cn->bh), so we have to inc the buffer
			 * count, and recheck things after locking
			 */
			tmp_bh = cn->bh;
			FUNC9(tmp_bh);
			FUNC10(tmp_bh);
			if (cn->bh && FUNC6(cn) && FUNC3(tmp_bh)) {
				if (!FUNC4(tmp_bh) ||
				    FUNC5(tmp_bh))
					FUNC0();
				FUNC1(chunk, tmp_bh, NULL, write_chunk);
				ret++;
			} else {
				/* note, cn->bh might be null now */
				FUNC12(tmp_bh);
			}
			FUNC11(tmp_bh);
		}
	      next:
		cn = cn->next;
		FUNC7();
	}
	return ret;
}