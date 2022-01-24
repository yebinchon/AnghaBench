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
struct ocfs2_triggers {int /*<<< orphan*/  ot_triggers; } ;
struct ocfs2_super {int /*<<< orphan*/  journal; } ;
struct ocfs2_caching_info {int /*<<< orphan*/  ci_ops; } ;
struct buffer_head {scalar_t__ b_blocknr; int /*<<< orphan*/  b_size; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
#define  OCFS2_JOURNAL_ACCESS_CREATE 130 
#define  OCFS2_JOURNAL_ACCESS_UNDO 129 
#define  OCFS2_JOURNAL_ACCESS_WRITE 128 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long long,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct ocfs2_caching_info*) ; 

__attribute__((used)) static int FUNC15(handle_t *handle,
				  struct ocfs2_caching_info *ci,
				  struct buffer_head *bh,
				  struct ocfs2_triggers *triggers,
				  int type)
{
	int status;
	struct ocfs2_super *osb =
		FUNC2(FUNC11(ci));

	FUNC1(!ci || !ci->ci_ops);
	FUNC1(!handle);
	FUNC1(!bh);

	FUNC8("bh->b_blocknr=%llu, type=%d (\"%s\"), bh->b_size = %zu\n",
		   (unsigned long long)bh->b_blocknr, type,
		   (type == OCFS2_JOURNAL_ACCESS_CREATE) ?
		   "OCFS2_JOURNAL_ACCESS_CREATE" :
		   "OCFS2_JOURNAL_ACCESS_WRITE",
		   bh->b_size);

	/* we can safely remove this assertion after testing. */
	if (!FUNC3(bh)) {
		FUNC7(ML_ERROR, "giving me a buffer that's not uptodate!\n");
		FUNC7(ML_ERROR, "b_blocknr=%llu\n",
		     (unsigned long long)bh->b_blocknr);
		FUNC0();
	}

	/* Set the current transaction information on the ci so
	 * that the locking code knows whether it can drop it's locks
	 * on this ci or not. We're protected from the commit
	 * thread updating the current transaction id until
	 * ocfs2_commit_trans() because ocfs2_start_trans() took
	 * j_trans_barrier for us. */
	FUNC14(osb->journal, ci);

	FUNC12(ci);
	switch (type) {
	case OCFS2_JOURNAL_ACCESS_CREATE:
	case OCFS2_JOURNAL_ACCESS_WRITE:
		status = FUNC5(handle, bh);
		break;

	case OCFS2_JOURNAL_ACCESS_UNDO:
		status = FUNC4(handle, bh);
		break;

	default:
		status = -EINVAL;
		FUNC7(ML_ERROR, "Uknown access type!\n");
	}
	if (!status && FUNC10(osb) && triggers)
		FUNC6(bh, &triggers->ot_triggers);
	FUNC13(ci);

	if (status < 0)
		FUNC7(ML_ERROR, "Error %d getting %d access to buffer!\n",
		     status, type);

	FUNC9(status);
	return status;
}