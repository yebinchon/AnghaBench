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
struct ocfs2_quota_chunk {int /*<<< orphan*/  qc_headerbh; int /*<<< orphan*/  qc_num; } ;
struct ocfs2_dquot {struct ocfs2_quota_chunk* dq_chunk; int /*<<< orphan*/  dq_local_off; } ;
struct inode {int dummy; } ;
struct dquot {int dq_type; struct super_block* dq_sb; } ;
struct TYPE_2__ {struct inode** files; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ocfs2_quota_chunk*) ; 
 struct ocfs2_dquot* FUNC1 (struct dquot*) ; 
 int FUNC2 (struct ocfs2_quota_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ocfs2_quota_chunk* FUNC4 (struct super_block*,int,int*) ; 
 struct ocfs2_quota_chunk* FUNC5 (struct super_block*,int,int*) ; 
 int FUNC6 (struct dquot*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  olq_alloc_dquot ; 
 TYPE_1__* FUNC9 (struct super_block*) ; 

__attribute__((used)) static int FUNC10(struct dquot *dquot)
{
	struct super_block *sb = dquot->dq_sb;
	int type = dquot->dq_type;
	struct inode *lqinode = FUNC9(sb)->files[type];
	struct ocfs2_quota_chunk *chunk;
	struct ocfs2_dquot *od = FUNC1(dquot);
	int offset;
	int status;

	chunk = FUNC5(sb, type, &offset);
	if (!chunk) {
		chunk = FUNC4(sb, type, &offset);
		if (FUNC0(chunk))
			return FUNC2(chunk);
	} else if (FUNC0(chunk)) {
		return FUNC2(chunk);
	}
	od->dq_local_off = FUNC8(sb, chunk->qc_num, offset);
	od->dq_chunk = chunk;

	/* Initialize dquot structure on disk */
	status = FUNC6(dquot);
	if (status < 0) {
		FUNC3(status);
		goto out;
	}

	/* Mark structure as allocated */
	status = FUNC7(lqinode, chunk->qc_headerbh, olq_alloc_dquot,
				 &offset);
	if (status < 0) {
		FUNC3(status);
		goto out;
	}
out:
	return status;
}