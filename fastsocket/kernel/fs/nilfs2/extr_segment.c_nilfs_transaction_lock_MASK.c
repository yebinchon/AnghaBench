#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nilfs_transaction_info {int /*<<< orphan*/  ti_flags; int /*<<< orphan*/  ti_garbage; int /*<<< orphan*/  ti_magic; struct nilfs_transaction_info* ti_save; scalar_t__ ti_count; } ;
struct nilfs_sb_info {TYPE_1__* s_nilfs; } ;
struct TYPE_7__ {struct nilfs_transaction_info* journal_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  sc_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  ns_segctor_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  NILFS_SC_PRIOR_FLUSH ; 
 int /*<<< orphan*/  NILFS_TI_GC ; 
 int /*<<< orphan*/  NILFS_TI_MAGIC ; 
 int /*<<< orphan*/  NILFS_TI_WRITER ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_transaction_info*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct nilfs_sb_info *sbi,
				   struct nilfs_transaction_info *ti,
				   int gcflag)
{
	struct nilfs_transaction_info *cur_ti = current->journal_info;

	FUNC2(cur_ti);
	ti->ti_flags = NILFS_TI_WRITER;
	ti->ti_count = 0;
	ti->ti_save = cur_ti;
	ti->ti_magic = NILFS_TI_MAGIC;
	FUNC0(&ti->ti_garbage);
	current->journal_info = ti;

	for (;;) {
		FUNC3(&sbi->s_nilfs->ns_segctor_sem);
		if (!FUNC5(NILFS_SC_PRIOR_FLUSH, &FUNC1(sbi)->sc_flags))
			break;

		FUNC4(FUNC1(sbi));

		FUNC6(&sbi->s_nilfs->ns_segctor_sem);
		FUNC7();
	}
	if (gcflag)
		ti->ti_flags |= NILFS_TI_GC;
}