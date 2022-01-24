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
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct isofs_sb_info {int /*<<< orphan*/  s_nls_iocharset; } ;

/* Variables and functions */
 struct isofs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct isofs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct super_block *sb)
{
	struct isofs_sb_info *sbi = FUNC0(sb);

#ifdef CONFIG_JOLIET
	lock_kernel();

	unload_nls(sbi->s_nls_iocharset);

	unlock_kernel();
#endif

	FUNC1(sbi);
	sb->s_fs_info = NULL;
	return;
}