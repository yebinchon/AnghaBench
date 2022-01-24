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
struct the_nilfs {int /*<<< orphan*/  ns_super_sem; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_list; int /*<<< orphan*/ * s_ifile; struct the_nilfs* s_nilfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct nilfs_sb_info *sbi)
{
	struct the_nilfs *nilfs = sbi->s_nilfs;

	FUNC2(sbi->s_ifile);
	FUNC3(sbi->s_ifile);
	sbi->s_ifile = NULL;
	FUNC0(&nilfs->ns_super_sem);
	FUNC1(&sbi->s_list);
	FUNC4(&nilfs->ns_super_sem);
}