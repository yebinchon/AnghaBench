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
struct super_block {int s_flags; } ;
struct ext3_super_block {void* s_free_inodes_count; void* s_free_blocks_count; void* s_wtime; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct buffer_head* s_sbh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int MS_RDONLY ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int FUNC11 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb,
			       struct ext3_super_block *es,
			       int sync)
{
	struct buffer_head *sbh = FUNC1(sb)->s_sbh;
	int error = 0;

	if (!sbh)
		return error;

	if (FUNC2(sbh)) {
		/*
		 * Oh, dear.  A previous attempt to write the
		 * superblock failed.  This could happen because the
		 * USB device was yanked out.  Or it could happen to
		 * be a transient write error and maybe the block will
		 * be remapped.  Nothing we can do but to retry the
		 * write and hope for the best.
		 */
		FUNC7(sb, KERN_ERR, "previous I/O error to "
		       "superblock detected");
		FUNC3(sbh);
		FUNC10(sbh);
	}
	/*
	 * If the file system is mounted read-only, don't update the
	 * superblock write time.  This avoids updating the superblock
	 * write time when we are mounting the root file system
	 * read/only but we need to replay the journal; at that point,
	 * for people who are east of GMT and who make their clock
	 * tick in localtime for Windows bug-for-bug compatibility,
	 * the clock is set in the future, and this will cause e2fsck
	 * to complain and force a full file system check.
	 */
	if (!(sb->s_flags & MS_RDONLY))
		es->s_wtime = FUNC4(FUNC8());
	es->s_free_blocks_count = FUNC4(FUNC5(sb));
	es->s_free_inodes_count = FUNC4(FUNC6(sb));
	FUNC0(sbh, "marking dirty");
	FUNC9(sbh);
	if (sync) {
		error = FUNC11(sbh);
		if (FUNC2(sbh)) {
			FUNC7(sb, KERN_ERR, "I/O error while writing "
			       "superblock");
			FUNC3(sbh);
			FUNC10(sbh);
		}
	}
	return error;
}