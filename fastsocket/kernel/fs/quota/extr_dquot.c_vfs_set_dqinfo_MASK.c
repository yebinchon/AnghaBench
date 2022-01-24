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
struct super_block {TYPE_1__* dq_op; } ;
struct mem_dqinfo {int dqi_flags; int /*<<< orphan*/  dqi_igrace; int /*<<< orphan*/  dqi_bgrace; } ;
struct if_dqinfo {int dqi_valid; int dqi_flags; int /*<<< orphan*/  dqi_igrace; int /*<<< orphan*/  dqi_bgrace; } ;
struct TYPE_4__ {int /*<<< orphan*/  dqonoff_mutex; struct mem_dqinfo* info; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* write_info ) (struct super_block*,int) ;} ;

/* Variables and functions */
 int DQF_MASK ; 
 int ESRCH ; 
 int IIF_BGRACE ; 
 int IIF_FLAGS ; 
 int IIF_IGRACE ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int) ; 

int FUNC8(struct super_block *sb, int type, struct if_dqinfo *ii)
{
	struct mem_dqinfo *mi;
	int err = 0;

	FUNC1(&FUNC3(sb)->dqonoff_mutex);
	if (!FUNC4(sb, type)) {
		err = -ESRCH;
		goto out;
	}
	mi = FUNC3(sb)->info + type;
	FUNC5(&dq_data_lock);
	if (ii->dqi_valid & IIF_BGRACE)
		mi->dqi_bgrace = ii->dqi_bgrace;
	if (ii->dqi_valid & IIF_IGRACE)
		mi->dqi_igrace = ii->dqi_igrace;
	if (ii->dqi_valid & IIF_FLAGS)
		mi->dqi_flags = (mi->dqi_flags & ~DQF_MASK) |
				(ii->dqi_flags & DQF_MASK);
	FUNC6(&dq_data_lock);
	FUNC0(sb, type);
	/* Force write to disk */
	sb->dq_op->write_info(sb, type);
out:
	FUNC2(&FUNC3(sb)->dqonoff_mutex);
	return err;
}