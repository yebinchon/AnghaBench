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
struct sysv_sb_info {scalar_t__ s_type; scalar_t__* s_sb_state; int /*<<< orphan*/  s_bh2; scalar_t__* s_sb_time; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FSTYPE_SYSV4 ; 
 struct sysv_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct sysv_sb_info*,unsigned long) ; 
 unsigned long FUNC2 (struct sysv_sb_info*,scalar_t__) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb, int wait)
{
	struct sysv_sb_info *sbi = FUNC0(sb);
	unsigned long time = FUNC3(), old_time;

	FUNC4(sb);

	/*
	 * If we are going to write out the super block,
	 * then attach current time stamp.
	 * But if the filesystem was marked clean, keep it clean.
	 */
	old_time = FUNC2(sbi, *sbi->s_sb_time);
	if (sbi->s_type == FSTYPE_SYSV4) {
		if (*sbi->s_sb_state == FUNC1(sbi, 0x7c269d38 - old_time))
			*sbi->s_sb_state = FUNC1(sbi, 0x7c269d38 - time);
		*sbi->s_sb_time = FUNC1(sbi, time);
		FUNC5(sbi->s_bh2);
	}

	FUNC6(sb);

	return 0;
}