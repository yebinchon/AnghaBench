#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sysv_sb_info {scalar_t__ s_bh1; scalar_t__ s_bh2; } ;
struct super_block {int s_flags; scalar_t__ s_dirt; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 struct sysv_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sysv_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 

__attribute__((used)) static void FUNC5(struct super_block *sb)
{
	struct sysv_sb_info *sbi = FUNC0(sb);

	if (sb->s_dirt)
		FUNC4(sb);

	if (!(sb->s_flags & MS_RDONLY)) {
		/* XXX ext2 also updates the state here */
		FUNC3(sbi->s_bh1);
		if (sbi->s_bh1 != sbi->s_bh2)
			FUNC3(sbi->s_bh2);
	}

	FUNC1(sbi->s_bh1);
	if (sbi->s_bh1 != sbi->s_bh2)
		FUNC1(sbi->s_bh2);

	FUNC2(sbi);
}