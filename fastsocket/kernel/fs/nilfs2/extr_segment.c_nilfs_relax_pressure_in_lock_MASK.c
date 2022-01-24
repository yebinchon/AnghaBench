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
struct nilfs_transaction_info {int /*<<< orphan*/  ti_flags; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_flags; scalar_t__ sc_flush_request; } ;
struct nilfs_sb_info {struct the_nilfs* s_nilfs; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;

/* Variables and functions */
 struct nilfs_sb_info* FUNC0 (struct super_block*) ; 
 struct nilfs_sc_info* FUNC1 (struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  NILFS_SC_PRIOR_FLUSH ; 
 int /*<<< orphan*/  NILFS_TI_WRITER ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct super_block *sb)
{
	struct nilfs_sb_info *sbi = FUNC0(sb);
	struct nilfs_sc_info *sci = FUNC1(sbi);
	struct the_nilfs *nilfs = sbi->s_nilfs;

	if (!sci || !sci->sc_flush_request)
		return;

	FUNC5(NILFS_SC_PRIOR_FLUSH, &sci->sc_flags);
	FUNC7(&nilfs->ns_segctor_sem);

	FUNC2(&nilfs->ns_segctor_sem);
	if (sci->sc_flush_request &&
	    FUNC6(NILFS_SC_PRIOR_FLUSH, &sci->sc_flags)) {
		struct nilfs_transaction_info *ti = current->journal_info;

		ti->ti_flags |= NILFS_TI_WRITER;
		FUNC4(sci);
		ti->ti_flags &= ~NILFS_TI_WRITER;
	}
	FUNC3(&nilfs->ns_segctor_sem);
}