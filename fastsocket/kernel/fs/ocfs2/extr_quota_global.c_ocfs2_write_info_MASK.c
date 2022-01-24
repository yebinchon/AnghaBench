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
struct ocfs2_mem_dqinfo {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_QINFO_WRITE_CREDITS ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_mem_dqinfo*,int) ; 
 TYPE_1__* FUNC11 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb, int type)
{
	handle_t *handle;
	int status = 0;
	struct ocfs2_mem_dqinfo *oinfo = FUNC11(sb, type)->dqi_priv;

	FUNC4();

	status = FUNC8(oinfo, 1);
	if (status < 0)
		goto out;
	handle = FUNC9(FUNC1(sb), OCFS2_QINFO_WRITE_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC2(handle);
		FUNC5(status);
		goto out_ilock;
	}
	status = FUNC3(sb, type);
	FUNC7(FUNC1(sb), handle);
out_ilock:
	FUNC10(oinfo, 1);
out:
	FUNC6(status);
	return status;
}