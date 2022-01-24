#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nilfs_transaction_info {scalar_t__ ti_magic; scalar_t__ ti_count; int ti_flags; struct nilfs_transaction_info* ti_save; } ;
struct TYPE_6__ {TYPE_1__* s_nilfs; } ;
struct TYPE_5__ {struct nilfs_transaction_info* journal_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  ns_segctor_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (struct super_block*) ; 
 int NILFS_TI_DYNAMIC_ALLOC ; 
 scalar_t__ NILFS_TI_MAGIC ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nilfs_transaction_info*) ; 
 int /*<<< orphan*/  nilfs_transaction_cachep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct super_block *sb)
{
	struct nilfs_transaction_info *ti = current->journal_info;

	FUNC0(ti == NULL || ti->ti_magic != NILFS_TI_MAGIC);
	if (ti->ti_count > 0) {
		ti->ti_count--;
		return;
	}
	FUNC3(&FUNC1(sb)->s_nilfs->ns_segctor_sem);

	current->journal_info = ti->ti_save;
	if (ti->ti_flags & NILFS_TI_DYNAMIC_ALLOC)
		FUNC2(nilfs_transaction_cachep, ti);
}