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
 int /*<<< orphan*/  FM_MOUNT ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb)
{
	struct jfs_sb_info *sbi = FUNC0(sb);
	struct jfs_log *log = sbi->log;
	int rc = 0;

	if (!(sb->s_flags & MS_RDONLY)) {
		FUNC4(sb, FM_MOUNT);
		if ((rc = FUNC2(log)))
			FUNC1("jfs_unlock failed with return code %d", rc);
		else
			FUNC3(sb);
	}
	return 0;
}