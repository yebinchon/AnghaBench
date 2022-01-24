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
struct super_block {int s_flags; int /*<<< orphan*/  s_id; } ;
struct ext3_super_block {int /*<<< orphan*/  s_state; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_mount_opt; int /*<<< orphan*/ * s_journal; int /*<<< orphan*/  s_mount_state; struct ext3_super_block* s_es; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ERRORS_CONT ; 
 int /*<<< orphan*/  ERRORS_PANIC ; 
 int /*<<< orphan*/  ERRORS_RO ; 
 int /*<<< orphan*/  EXT3_ERROR_FS ; 
 int /*<<< orphan*/  EXT3_MOUNT_ABORT ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,struct ext3_super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct ext3_super_block *es = FUNC0(sb)->s_es;

	FUNC0(sb)->s_mount_state |= EXT3_ERROR_FS;
	es->s_state |= FUNC1(EXT3_ERROR_FS);

	if (sb->s_flags & MS_RDONLY)
		return;

	if (!FUNC6 (sb, ERRORS_CONT)) {
		journal_t *journal = FUNC0(sb)->s_journal;

		FUNC0(sb)->s_mount_opt |= EXT3_MOUNT_ABORT;
		if (journal)
			FUNC4(journal, -EIO);
	}
	if (FUNC6 (sb, ERRORS_RO)) {
		FUNC3(sb, KERN_CRIT,
			"error: remounting filesystem read-only");
		sb->s_flags |= MS_RDONLY;
	}
	FUNC2(sb, es, 1);
	if (FUNC6(sb, ERRORS_PANIC))
		FUNC5("EXT3-fs (%s): panic forced after error\n",
			sb->s_id);
}