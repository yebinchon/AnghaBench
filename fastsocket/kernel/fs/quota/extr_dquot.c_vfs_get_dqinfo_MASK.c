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
struct super_block {int dummy; } ;
struct mem_dqinfo {int dqi_flags; int /*<<< orphan*/  dqi_igrace; int /*<<< orphan*/  dqi_bgrace; } ;
struct if_dqinfo {int dqi_flags; int /*<<< orphan*/  dqi_valid; int /*<<< orphan*/  dqi_igrace; int /*<<< orphan*/  dqi_bgrace; } ;
struct TYPE_2__ {int /*<<< orphan*/  dqonoff_mutex; struct mem_dqinfo* info; } ;

/* Variables and functions */
 int DQF_MASK ; 
 int ESRCH ; 
 int /*<<< orphan*/  IIF_ALL ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct super_block *sb, int type, struct if_dqinfo *ii)
{
	struct mem_dqinfo *mi;
  
	FUNC0(&FUNC2(sb)->dqonoff_mutex);
	if (!FUNC3(sb, type)) {
		FUNC1(&FUNC2(sb)->dqonoff_mutex);
		return -ESRCH;
	}
	mi = FUNC2(sb)->info + type;
	FUNC4(&dq_data_lock);
	ii->dqi_bgrace = mi->dqi_bgrace;
	ii->dqi_igrace = mi->dqi_igrace;
	ii->dqi_flags = mi->dqi_flags & DQF_MASK;
	ii->dqi_valid = IIF_ALL;
	FUNC5(&dq_data_lock);
	FUNC1(&FUNC2(sb)->dqonoff_mutex);
	return 0;
}