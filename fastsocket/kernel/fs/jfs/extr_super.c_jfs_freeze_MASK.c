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
struct super_block {int s_flags; } ;
struct jfs_sb_info {struct jfs_log* log; } ;
struct jfs_log {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_CLEAN ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb)
{
	struct jfs_sb_info *sbi = FUNC0(sb);
	struct jfs_log *log = sbi->log;

	if (!(sb->s_flags & MS_RDONLY)) {
		FUNC2(sb);
		FUNC1(log);
		FUNC3(sb, FM_CLEAN);
	}
	return 0;
}