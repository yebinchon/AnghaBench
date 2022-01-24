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
struct super_block {int /*<<< orphan*/  s_id; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct dquot {unsigned long dq_type; int /*<<< orphan*/  dq_id; struct super_block* dq_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  dqio_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_QSYNC_CREDITS ; 
 struct ocfs2_super* FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC4 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/ * FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_mem_dqinfo*,int) ; 
 TYPE_2__* FUNC15 (struct super_block*,unsigned long) ; 
 TYPE_1__* FUNC16 (struct super_block*) ; 

__attribute__((used)) static int FUNC17(struct dquot *dquot, unsigned long type)
{
	handle_t *handle;
	struct super_block *sb = dquot->dq_sb;
	struct ocfs2_mem_dqinfo *oinfo = FUNC15(sb, type)->dqi_priv;
	struct ocfs2_super *osb = FUNC1(sb);
	int status = 0;

	FUNC5("id=%u qtype=%u type=%lu device=%s\n", dquot->dq_id,
		   dquot->dq_type, type, sb->s_id);
	if (type != dquot->dq_type)
		goto out;
	status = FUNC11(oinfo, 1);
	if (status < 0)
		goto out;

	handle = FUNC12(osb, OCFS2_QSYNC_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC2(handle);
		FUNC6(status);
		goto out_ilock;
	}
	FUNC8(&FUNC16(sb)->dqio_mutex);
	status = FUNC13(dquot);
	FUNC9(&FUNC16(sb)->dqio_mutex);
	if (status < 0)
		FUNC6(status);
	/* We have to write local structure as well... */
	FUNC4(dquot);
	status = FUNC3(dquot);
	if (status < 0)
		FUNC6(status);
	FUNC10(osb, handle);
out_ilock:
	FUNC14(oinfo, 1);
out:
	FUNC7(status);
	return status;
}