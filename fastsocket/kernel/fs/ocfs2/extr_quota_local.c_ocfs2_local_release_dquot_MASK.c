#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ocfs2_local_disk_chunk {int /*<<< orphan*/  dqc_free; int /*<<< orphan*/  dqc_bitmap; } ;
struct ocfs2_dquot {TYPE_1__* dq_chunk; int /*<<< orphan*/  dq_local_off; } ;
struct dquot {int dq_type; int /*<<< orphan*/  dq_flags; struct super_block* dq_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_9__ {int /*<<< orphan*/ * files; } ;
struct TYPE_8__ {scalar_t__ b_data; } ;
struct TYPE_7__ {TYPE_2__* qc_headerbh; int /*<<< orphan*/  qc_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DQ_READ_B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ocfs2_dquot* FUNC2 (struct dquot*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct dquot*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC12 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC15(struct dquot *dquot)
{
	int status;
	int type = dquot->dq_type;
	struct ocfs2_dquot *od = FUNC2(dquot);
	struct super_block *sb = dquot->dq_sb;
	struct ocfs2_local_disk_chunk *dchunk;
	int offset;
	handle_t *handle = FUNC4();

	FUNC0(!handle);
	/* First write all local changes to global file */
	status = FUNC9(dquot);
	if (status < 0) {
		FUNC7(status);
		goto out;
	}

	status = FUNC10(handle,
			FUNC1(FUNC13(sb)->files[type]),
			od->dq_chunk->qc_headerbh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC7(status);
		goto out;
	}
	offset = FUNC12(sb, od->dq_chunk->qc_num,
					     od->dq_local_off);
	dchunk = (struct ocfs2_local_disk_chunk *)
			(od->dq_chunk->qc_headerbh->b_data);
	/* Mark structure as freed */
	FUNC6(od->dq_chunk->qc_headerbh);
	FUNC8(offset, dchunk->dqc_bitmap);
	FUNC5(&dchunk->dqc_free, 1);
	FUNC14(od->dq_chunk->qc_headerbh);
	status = FUNC11(handle, od->dq_chunk->qc_headerbh);
	if (status < 0) {
		FUNC7(status);
		goto out;
	}
	status = 0;
out:
	/* Clear the read bit so that next time someone uses this
	 * dquot he reads fresh info from disk and allocates local
	 * dquot structure */
	FUNC3(DQ_READ_B, &dquot->dq_flags);
	return status;
}