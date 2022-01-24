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
struct ext3_super_block {int dummy; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT3_FEATURE_INCOMPAT_RECOVER ; 
 scalar_t__ FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,struct ext3_super_block*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 

__attribute__((used)) static void FUNC9(struct super_block * sb,
					struct ext3_super_block * es)
{
	journal_t *journal = FUNC2(sb)->s_journal;

	FUNC5(journal);
	if (FUNC4(journal) < 0)
		goto out;

	FUNC7(sb);
	if (FUNC1(sb, EXT3_FEATURE_INCOMPAT_RECOVER) &&
	    sb->s_flags & MS_RDONLY) {
		FUNC0(sb, EXT3_FEATURE_INCOMPAT_RECOVER);
		FUNC3(sb, es, 1);
	}
	FUNC8(sb);

out:
	FUNC6(journal);
}