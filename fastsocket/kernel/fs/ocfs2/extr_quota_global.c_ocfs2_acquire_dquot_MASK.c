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
struct ocfs2_mem_dqinfo {int dummy; } ;
struct dquot {int /*<<< orphan*/  dq_type; int /*<<< orphan*/  dq_id; int /*<<< orphan*/  dq_sb; } ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 int FUNC0 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_mem_dqinfo*,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dquot *dquot)
{
	struct ocfs2_mem_dqinfo *oinfo =
			FUNC5(dquot->dq_sb, dquot->dq_type)->dqi_priv;
	int status = 0;

	FUNC1("id=%u, type=%d", dquot->dq_id, dquot->dq_type);
	/* We need an exclusive lock, because we're going to update use count
	 * and instantiate possibly new dquot structure */
	status = FUNC3(oinfo, 1);
	if (status < 0)
		goto out;
	status = FUNC0(dquot);
	FUNC4(oinfo, 1);
out:
	FUNC2(status);
	return status;
}