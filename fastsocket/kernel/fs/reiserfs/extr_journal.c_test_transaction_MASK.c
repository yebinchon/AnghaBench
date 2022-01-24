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
struct reiserfs_journal_list {scalar_t__ j_len; struct reiserfs_journal_cnode* j_realblock; int /*<<< orphan*/  j_nonzerolen; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* next; scalar_t__ bh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_journal_cnode*) ; 

__attribute__((used)) static int FUNC3(struct super_block *s,
                            struct reiserfs_journal_list *jl)
{
	struct reiserfs_journal_cnode *cn;

	if (jl->j_len == 0 || FUNC0(&jl->j_nonzerolen) == 0)
		return 1;

	cn = jl->j_realblock;
	while (cn) {
		/* if the blocknr == 0, this has been cleared from the hash,
		 ** skip it
		 */
		if (cn->blocknr == 0) {
			goto next;
		}
		if (cn->bh && !FUNC2(cn))
			return 0;
	      next:
		cn = cn->next;
		FUNC1();
	}
	return 0;
}