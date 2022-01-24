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
struct ext3_super_block {int /*<<< orphan*/  s_journal_inum; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int EROFS ; 
 int /*<<< orphan*/  EXT3_FEATURE_COMPAT_HAS_JOURNAL ; 
 int /*<<< orphan*/  EXT3_FEATURE_INCOMPAT_RECOVER ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct ext3_super_block*,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb,
			       struct ext3_super_block *es,
			       unsigned int journal_inum)
{
	journal_t *journal;
	int err;

	if (sb->s_flags & MS_RDONLY) {
		FUNC6(sb, KERN_ERR,
			"error: readonly filesystem when trying to "
			"create journal");
		return -EROFS;
	}

	journal = FUNC5(sb, journal_inum);
	if (!journal)
		return -EINVAL;

	FUNC6(sb, KERN_INFO, "creating new journal on inode %u",
	       journal_inum);

	err = FUNC8(journal);
	if (err) {
		FUNC6(sb, KERN_ERR, "error creating journal");
		FUNC9(journal);
		return -EIO;
	}

	FUNC0(sb)->s_journal = journal;

	FUNC7(sb);
	FUNC2(sb, EXT3_FEATURE_INCOMPAT_RECOVER);
	FUNC1(sb, EXT3_FEATURE_COMPAT_HAS_JOURNAL);

	es->s_journal_inum = FUNC3(journal_inum);

	/* Make sure we flush the recovery flag to disk. */
	FUNC4(sb, es, 1);

	return 0;
}