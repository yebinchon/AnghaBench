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
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_es; int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT3_FEATURE_INCOMPAT_RECOVER ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int MS_RDONLY ; 
 int FUNC2 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb)
{
	int error = 0;
	journal_t *journal;

	if (!(sb->s_flags & MS_RDONLY)) {
		journal = FUNC1(sb)->s_journal;

		/* Now we set up the journal barrier. */
		FUNC4(journal);

		/*
		 * We don't want to clear needs_recovery flag when we failed
		 * to flush the journal.
		 */
		error = FUNC3(journal);
		if (error < 0)
			goto out;

		/* Journal blocked and flushed, clear needs_recovery flag. */
		FUNC0(sb, EXT3_FEATURE_INCOMPAT_RECOVER);
		error = FUNC2(sb, FUNC1(sb)->s_es, 1);
		if (error)
			goto out;
	}
	return 0;

out:
	FUNC5(journal);
	return error;
}