#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_nlink; } ;
struct TYPE_5__ {struct super_block* j_private; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,struct inode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static journal_t *FUNC9(struct super_block *sb,
				   unsigned int journal_inum)
{
	struct inode *journal_inode;
	journal_t *journal;

	/* First, test for the existence of a valid inode on disk.  Bad
	 * things happen if we iget() an unused inode, as the subsequent
	 * iput() will try to delete it. */

	journal_inode = FUNC2(sb, journal_inum);
	if (FUNC0(journal_inode)) {
		FUNC4(sb, KERN_ERR, "error: no journal found");
		return NULL;
	}
	if (!journal_inode->i_nlink) {
		FUNC8(journal_inode);
		FUNC5(journal_inode);
		FUNC4(sb, KERN_ERR, "error: journal inode is deleted");
		return NULL;
	}

	FUNC6(2, "Journal inode found at %p: %Ld bytes\n",
		  journal_inode, journal_inode->i_size);
	if (!FUNC1(journal_inode->i_mode)) {
		FUNC4(sb, KERN_ERR, "error: invalid journal inode");
		FUNC5(journal_inode);
		return NULL;
	}

	journal = FUNC7(journal_inode);
	if (!journal) {
		FUNC4(sb, KERN_ERR, "error: could not load journal inode");
		FUNC5(journal_inode);
		return NULL;
	}
	journal->j_private = sb;
	FUNC3(sb, journal);
	return journal;
}