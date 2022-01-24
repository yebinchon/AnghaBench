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
struct v2r1_disk_dqblk {int /*<<< orphan*/  dqb_id; } ;
struct qtree_mem_dqinfo {int dummy; } ;
struct dquot {scalar_t__ dq_id; int /*<<< orphan*/  dq_type; int /*<<< orphan*/  dq_sb; } ;
struct TYPE_2__ {struct qtree_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qtree_mem_dqinfo*,void*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *dp, struct dquot *dquot)
{
	struct v2r1_disk_dqblk *d = dp;
	struct qtree_mem_dqinfo *info =
			FUNC2(dquot->dq_sb, dquot->dq_type)->dqi_priv;

	if (FUNC1(info, dp))
		return 0;
	return FUNC0(d->dqb_id) == dquot->dq_id;
}