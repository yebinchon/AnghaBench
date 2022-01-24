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
struct ubifs_info {int /*<<< orphan*/  commit_sem; int /*<<< orphan*/  space_lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOSPC ; 
 int FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ubifs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct ubifs_info *c, int jhead, int len)
{
	int err, cmt_retries = 0, nospc_retries = 0;

again:
	FUNC5(&c->commit_sem);
	err = FUNC7(c, jhead, len);
	if (!err)
		return 0;
	FUNC13(&c->commit_sem);

	if (err == -ENOSPC) {
		/*
		 * GC could not make any progress. We should try to commit
		 * once because it could make some dirty space and GC would
		 * make progress, so make the error -EAGAIN so that the below
		 * will commit and re-try.
		 */
		if (nospc_retries++ < 2) {
			FUNC4("no space, retry");
			err = -EAGAIN;
		}

		/*
		 * This means that the budgeting is incorrect. We always have
		 * to be able to write to the media, because all operations are
		 * budgeted. Deletions are not budgeted, though, but we reserve
		 * an extra LEB for them.
		 */
	}

	if (err != -EAGAIN)
		goto out;

	/*
	 * -EAGAIN means that the journal is full or too large, or the above
	 * code wants to do one commit. Do this and re-try.
	 */
	if (cmt_retries > 128) {
		/*
		 * This should not happen unless the journal size limitations
		 * are too tough.
		 */
		FUNC10("stuck in space allocation");
		err = -ENOSPC;
		goto out;
	} else if (cmt_retries > 32)
		FUNC12("too many space allocation re-tries (%d)",
			   cmt_retries);

	FUNC4("-EAGAIN, commit and retry (retried %d times)",
		cmt_retries);
	cmt_retries += 1;

	err = FUNC11(c);
	if (err)
		return err;
	goto again;

out:
	FUNC10("cannot reserve %d bytes in jhead %d, error %d",
		  len, jhead, err);
	if (err == -ENOSPC) {
		/* This are some budgeting problems, print useful information */
		FUNC6(&c->commit_sem);
		FUNC8(&c->space_lock);
		FUNC3();
		FUNC1(c);
		FUNC9(&c->space_lock);
		FUNC2(c);
		cmt_retries = FUNC0(c);
		FUNC14(&c->commit_sem);
	}
	return err;
}