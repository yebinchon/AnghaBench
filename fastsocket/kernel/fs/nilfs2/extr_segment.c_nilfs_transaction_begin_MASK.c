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
struct the_nilfs {int /*<<< orphan*/  ns_segctor_sem; } ;
struct super_block {int dummy; } ;
struct nilfs_transaction_info {int ti_flags; struct nilfs_transaction_info* ti_save; } ;
struct nilfs_sb_info {struct the_nilfs* s_nilfs; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;

/* Variables and functions */
 int ENOSPC ; 
 struct nilfs_sb_info* FUNC0 (struct super_block*) ; 
 int NILFS_TI_DYNAMIC_ALLOC ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nilfs_transaction_info*) ; 
 scalar_t__ FUNC3 (struct the_nilfs*) ; 
 int FUNC4 (struct nilfs_transaction_info*) ; 
 int /*<<< orphan*/  nilfs_transaction_cachep ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct super_block *sb,
			    struct nilfs_transaction_info *ti,
			    int vacancy_check)
{
	struct nilfs_sb_info *sbi;
	struct the_nilfs *nilfs;
	int ret = FUNC4(ti);

	if (FUNC5(ret < 0))
		return ret;
	if (ret > 0)
		return 0;

	sbi = FUNC0(sb);
	nilfs = sbi->s_nilfs;
	FUNC1(&nilfs->ns_segctor_sem);
	if (vacancy_check && FUNC3(nilfs)) {
		FUNC6(&nilfs->ns_segctor_sem);
		ret = -ENOSPC;
		goto failed;
	}
	return 0;

 failed:
	ti = current->journal_info;
	current->journal_info = ti->ti_save;
	if (ti->ti_flags & NILFS_TI_DYNAMIC_ALLOC)
		FUNC2(nilfs_transaction_cachep, ti);
	return ret;
}