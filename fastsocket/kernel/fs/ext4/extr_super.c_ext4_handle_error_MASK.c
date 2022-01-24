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
struct ext4_super_block {int /*<<< orphan*/  s_state; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_mount_flags; int /*<<< orphan*/ * s_journal; int /*<<< orphan*/  s_mount_state; struct ext4_super_block* s_es; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ERRORS_CONT ; 
 int /*<<< orphan*/  ERRORS_PANIC ; 
 int /*<<< orphan*/  ERRORS_RO ; 
 int /*<<< orphan*/  EXT4_ERROR_FS ; 
 int /*<<< orphan*/  EXT4_MF_FS_ABORTED ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct ext4_super_block *es = FUNC0(sb)->s_es;

	FUNC0(sb)->s_mount_state |= EXT4_ERROR_FS;
	es->s_state |= FUNC1(EXT4_ERROR_FS);

	if (sb->s_flags & MS_RDONLY)
		return;

	if (!FUNC6(sb, ERRORS_CONT)) {
		journal_t *journal = FUNC0(sb)->s_journal;

		FUNC0(sb)->s_mount_flags |= EXT4_MF_FS_ABORTED;
		if (journal)
			FUNC4(journal, -EIO);
	}
	if (FUNC6(sb, ERRORS_RO)) {
		FUNC3(sb, KERN_CRIT, "Remounting filesystem read-only");
		sb->s_flags |= MS_RDONLY;
	}
	FUNC2(sb, 1);
	if (FUNC6(sb, ERRORS_PANIC))
		FUNC5("EXT4-fs (device %s): panic forced after error\n",
			sb->s_id);
}