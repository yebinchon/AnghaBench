#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;
struct TYPE_4__ {unsigned long s_gdb_count; TYPE_1__* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_first_meta_bg; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_META_BG ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(struct super_block *sb,
					ext4_group_t group)
{
	if (!FUNC2(sb, group))
		return 0;

	if (FUNC0(sb,EXT4_FEATURE_INCOMPAT_META_BG))
		return FUNC3(FUNC1(sb)->s_es->s_first_meta_bg);
	else
		return FUNC1(sb)->s_gdb_count;
}