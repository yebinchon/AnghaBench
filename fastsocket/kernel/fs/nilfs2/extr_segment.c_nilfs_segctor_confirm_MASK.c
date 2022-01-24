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
struct nilfs_sc_info {int /*<<< orphan*/  sc_flags; struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_inode_lock; int /*<<< orphan*/  s_dirty_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_SC_DIRTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nilfs_sc_info*) ; 
 scalar_t__ FUNC2 (struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nilfs_sc_info *sci)
{
	struct nilfs_sb_info *sbi = sci->sc_sbi;
	int ret = 0;

	if (FUNC2(sbi))
		FUNC3(NILFS_SC_DIRTY, &sci->sc_flags);

	FUNC4(&sbi->s_inode_lock);
	if (FUNC0(&sbi->s_dirty_files) && FUNC1(sci))
		ret++;

	FUNC5(&sbi->s_inode_lock);
	return ret;
}