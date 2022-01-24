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
struct TYPE_2__ {int /*<<< orphan*/  s_journal; int /*<<< orphan*/  s_es; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT3_FEATURE_INCOMPAT_RECOVER ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb)
{
	if (!(sb->s_flags & MS_RDONLY)) {
		FUNC4(sb);
		/* Reser the needs_recovery flag before the fs is unlocked. */
		FUNC1(sb, EXT3_FEATURE_INCOMPAT_RECOVER);
		FUNC2(sb, FUNC0(sb)->s_es, 1);
		FUNC5(sb);
		FUNC3(FUNC0(sb)->s_journal);
	}
	return 0;
}