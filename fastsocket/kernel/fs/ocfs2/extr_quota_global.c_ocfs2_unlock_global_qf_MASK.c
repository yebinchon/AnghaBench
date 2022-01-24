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
struct ocfs2_mem_dqinfo {int /*<<< orphan*/ * dqi_gqi_bh; int /*<<< orphan*/  dqi_gqi_count; int /*<<< orphan*/  dqi_gqinode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
	FUNC1(oinfo->dqi_gqinode, ex);
	FUNC0(oinfo->dqi_gqi_bh);
	FUNC2(&dq_data_lock);
	if (!--oinfo->dqi_gqi_count)
		oinfo->dqi_gqi_bh = NULL;
	FUNC3(&dq_data_lock);
}