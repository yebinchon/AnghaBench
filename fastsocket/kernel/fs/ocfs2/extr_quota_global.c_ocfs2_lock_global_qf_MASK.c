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
struct ocfs2_mem_dqinfo {struct buffer_head* dqi_gqi_bh; int /*<<< orphan*/  dqi_gqi_count; int /*<<< orphan*/  dqi_gqinode; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int FUNC1 (int /*<<< orphan*/ ,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
	int status;
	struct buffer_head *bh = NULL;

	status = FUNC1(oinfo->dqi_gqinode, &bh, ex);
	if (status < 0)
		return status;
	FUNC2(&dq_data_lock);
	if (!oinfo->dqi_gqi_count++)
		oinfo->dqi_gqi_bh = bh;
	else
		FUNC0(bh != oinfo->dqi_gqi_bh);
	FUNC3(&dq_data_lock);
	return 0;
}