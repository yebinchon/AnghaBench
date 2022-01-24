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
struct the_nilfs {int dummy; } ;
struct nilfs_sb_info {int /*<<< orphan*/ * s_sc_info; struct the_nilfs* s_nilfs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct the_nilfs*,struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct the_nilfs*,struct nilfs_sb_info*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct nilfs_sb_info*) ; 

int FUNC6(struct nilfs_sb_info *sbi)
{
	struct the_nilfs *nilfs = sbi->s_nilfs;
	int err;

	/* Each field of nilfs_segctor is cleared through the initialization
	   of super-block info */
	sbi->s_sc_info = FUNC5(sbi);
	if (!sbi->s_sc_info)
		return -ENOMEM;

	FUNC2(nilfs, sbi);
	err = FUNC4(FUNC0(sbi));
	if (err) {
		FUNC3(nilfs, sbi);
		FUNC1(sbi->s_sc_info);
		sbi->s_sc_info = NULL;
	}
	return err;
}