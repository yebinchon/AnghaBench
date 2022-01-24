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
struct nilfs_transaction_info {scalar_t__ ti_magic; int ti_flags; scalar_t__ ti_count; struct nilfs_transaction_info* ti_save; } ;
struct nilfs_sc_info {scalar_t__ sc_watermark; } ;
struct nilfs_sb_info {TYPE_1__* s_nilfs; } ;
struct TYPE_4__ {struct nilfs_transaction_info* journal_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  ns_segctor_sem; int /*<<< orphan*/  ns_ndirtyblks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nilfs_sb_info* FUNC1 (struct super_block*) ; 
 struct nilfs_sc_info* FUNC2 (struct nilfs_sb_info*) ; 
 int NILFS_TI_COMMIT ; 
 int NILFS_TI_DYNAMIC_ALLOC ; 
 scalar_t__ NILFS_TI_MAGIC ; 
 int NILFS_TI_SYNC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nilfs_transaction_info*) ; 
 int FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  nilfs_transaction_cachep ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct super_block *sb)
{
	struct nilfs_transaction_info *ti = current->journal_info;
	struct nilfs_sb_info *sbi;
	struct nilfs_sc_info *sci;
	int err = 0;

	FUNC0(ti == NULL || ti->ti_magic != NILFS_TI_MAGIC);
	ti->ti_flags |= NILFS_TI_COMMIT;
	if (ti->ti_count > 0) {
		ti->ti_count--;
		return 0;
	}
	sbi = FUNC1(sb);
	sci = FUNC2(sbi);
	if (sci != NULL) {
		if (ti->ti_flags & NILFS_TI_COMMIT)
			FUNC7(sci);
		if (FUNC3(&sbi->s_nilfs->ns_ndirtyblks) >
		    sci->sc_watermark)
			FUNC6(sci, 0);
	}
	FUNC8(&sbi->s_nilfs->ns_segctor_sem);
	current->journal_info = ti->ti_save;

	if (ti->ti_flags & NILFS_TI_SYNC)
		err = FUNC5(sb);
	if (ti->ti_flags & NILFS_TI_DYNAMIC_ALLOC)
		FUNC4(nilfs_transaction_cachep, ti);
	return err;
}