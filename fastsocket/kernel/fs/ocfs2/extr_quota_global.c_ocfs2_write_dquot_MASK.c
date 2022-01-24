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
struct ocfs2_super {int dummy; } ;
struct dquot {int /*<<< orphan*/  dq_type; int /*<<< orphan*/  dq_id; int /*<<< orphan*/  dq_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_QWRITE_CREDITS ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dquot *dquot)
{
	handle_t *handle;
	struct ocfs2_super *osb = FUNC1(dquot->dq_sb);
	int status = 0;

	FUNC4("id=%u, type=%d", dquot->dq_id, dquot->dq_type);

	handle = FUNC8(osb, OCFS2_QWRITE_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC2(handle);
		FUNC5(status);
		goto out;
	}
	status = FUNC3(dquot);
	FUNC7(osb, handle);
out:
	FUNC6(status);
	return status;
}