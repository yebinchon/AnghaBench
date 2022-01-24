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
struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct dquot {int /*<<< orphan*/  dq_type; int /*<<< orphan*/  dq_sb; int /*<<< orphan*/  dq_id; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/ * FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_mem_dqinfo*,int) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct dquot *dquot)
{
	handle_t *handle;
	struct ocfs2_mem_dqinfo *oinfo =
			FUNC12(dquot->dq_sb, dquot->dq_type)->dqi_priv;
	struct ocfs2_super *osb = FUNC1(dquot->dq_sb);
	int status = 0;

	FUNC4("id=%u, type=%d", dquot->dq_id, dquot->dq_type);

	status = FUNC9(oinfo, 1);
	if (status < 0)
		goto out;
	handle = FUNC10(osb,
		FUNC7(dquot->dq_sb, dquot->dq_type));
	if (FUNC0(handle)) {
		status = FUNC2(handle);
		FUNC5(status);
		goto out_ilock;
	}
	status = FUNC3(dquot);
	FUNC8(osb, handle);
out_ilock:
	FUNC11(oinfo, 1);
out:
	FUNC6(status);
	return status;
}