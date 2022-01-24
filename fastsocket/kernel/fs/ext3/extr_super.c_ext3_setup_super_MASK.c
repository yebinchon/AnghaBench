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
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct ext3_super_block {int /*<<< orphan*/  s_mtime; int /*<<< orphan*/  s_mnt_count; int /*<<< orphan*/  s_max_mnt_count; int /*<<< orphan*/  s_state; int /*<<< orphan*/  s_checkinterval; int /*<<< orphan*/  s_lastcheck; int /*<<< orphan*/  s_rev_level; } ;
struct ext3_sb_info {int s_mount_state; TYPE_1__* s_journal; int /*<<< orphan*/  s_mount_opt; int /*<<< orphan*/  s_groups_count; } ;
typedef  scalar_t__ __s16 ;
struct TYPE_2__ {int /*<<< orphan*/  j_dev; int /*<<< orphan*/ * j_inode; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int EXT3_DFL_MAX_MNT_COUNT ; 
 int EXT3_ERROR_FS ; 
 int /*<<< orphan*/  EXT3_FEATURE_INCOMPAT_RECOVER ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 scalar_t__ EXT3_MAX_SUPP_REV ; 
 struct ext3_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int EXT3_VALID_FS ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct ext3_super_block*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 unsigned short FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct super_block *sb, struct ext3_super_block *es,
			    int read_only)
{
	struct ext3_sb_info *sbi = FUNC2(sb);
	int res = 0;

	if (FUNC13(es->s_rev_level) > EXT3_MAX_SUPP_REV) {
		FUNC8(sb, KERN_ERR,
			"error: revision level too high, "
			"forcing read-only mode");
		res = MS_RDONLY;
	}
	if (read_only)
		return res;
	if (!(sbi->s_mount_state & EXT3_VALID_FS))
		FUNC8(sb, KERN_WARNING,
			"warning: mounting unchecked fs, "
			"running e2fsck is recommended");
	else if ((sbi->s_mount_state & EXT3_ERROR_FS))
		FUNC8(sb, KERN_WARNING,
			"warning: mounting fs with errors, "
			"running e2fsck is recommended");
	else if ((__s16) FUNC12(es->s_max_mnt_count) >= 0 &&
		 FUNC12(es->s_mnt_count) >=
		 (unsigned short) (__s16) FUNC12(es->s_max_mnt_count))
		FUNC8(sb, KERN_WARNING,
			"warning: maximal mount count reached, "
			"running e2fsck is recommended");
	else if (FUNC13(es->s_checkinterval) &&
		(FUNC13(es->s_lastcheck) +
			FUNC13(es->s_checkinterval) <= FUNC10()))
		FUNC8(sb, KERN_WARNING,
			"warning: checktime reached, "
			"running e2fsck is recommended");
#if 0
		/* @@@ We _will_ want to clear the valid bit if we find
                   inconsistencies, to force a fsck at reboot.  But for
                   a plain journaled filesystem we can keep it set as
                   valid forever! :) */
	es->s_state &= cpu_to_le16(~EXT3_VALID_FS);
#endif
	if (!(__s16) FUNC12(es->s_max_mnt_count))
		es->s_max_mnt_count = FUNC5(EXT3_DFL_MAX_MNT_COUNT);
	FUNC11(&es->s_mnt_count, 1);
	es->s_mtime = FUNC6(FUNC10());
	FUNC9(sb);
	FUNC3(sb, EXT3_FEATURE_INCOMPAT_RECOVER);

	FUNC7(sb, es, 1);
	if (FUNC14(sb, DEBUG))
		FUNC8(sb, KERN_INFO, "[bs=%lu, gc=%lu, "
				"bpg=%lu, ipg=%lu, mo=%04lx]",
			sb->s_blocksize,
			sbi->s_groups_count,
			FUNC0(sb),
			FUNC1(sb),
			sbi->s_mount_opt);

	if (FUNC2(sb)->s_journal->j_inode == NULL) {
		char b[BDEVNAME_SIZE];
		FUNC8(sb, KERN_INFO, "using external journal on %s",
			FUNC4(FUNC2(sb)->s_journal->j_dev, b));
	} else {
		FUNC8(sb, KERN_INFO, "using internal journal");
	}
	return res;
}