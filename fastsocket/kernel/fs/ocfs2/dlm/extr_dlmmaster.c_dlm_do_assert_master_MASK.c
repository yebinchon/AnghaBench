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
typedef  int /*<<< orphan*/  u32 ;
struct dlm_node_iter {int dummy; } ;
struct dlm_master_list_entry {int dummy; } ;
struct TYPE_2__ {char* name; unsigned int len; } ;
struct dlm_lock_resource {int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  state; TYPE_1__ lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  master_lock; int /*<<< orphan*/  key; int /*<<< orphan*/  node_num; } ;
struct dlm_assert_master {unsigned int namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/  node_idx; } ;
typedef  int /*<<< orphan*/  assert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DLM_ASSERT_MASTER_MSG ; 
 int DLM_ASSERT_RESPONSE_MASTERY_REF ; 
 int DLM_ASSERT_RESPONSE_REASSERT ; 
 int /*<<< orphan*/  DLM_LOCK_RES_SETREF_INPROG ; 
 int /*<<< orphan*/  ML_ERROR ; 
 unsigned int O2NM_MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dlm_ctxt*,struct dlm_master_list_entry**,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC7 (void*,struct dlm_node_iter*) ; 
 int FUNC8 (struct dlm_node_iter*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_assert_master*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_assert_master*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct dlm_ctxt *dlm,
				struct dlm_lock_resource *res,
				void *nodemap, u32 flags)
{
	struct dlm_assert_master assert;
	int to, tmpret;
	struct dlm_node_iter iter;
	int ret = 0;
	int reassert;
	const char *lockname = res->lockname.name;
	unsigned int namelen = res->lockname.len;

	FUNC1(namelen > O2NM_MAX_NAME_LEN);

	FUNC14(&res->spinlock);
	res->state |= DLM_LOCK_RES_SETREF_INPROG;
	FUNC15(&res->spinlock);

again:
	reassert = 0;

	/* note that if this nodemap is empty, it returns 0 */
	FUNC7(nodemap, &iter);
	while ((to = FUNC8(&iter)) >= 0) {
		int r = 0;
		struct dlm_master_list_entry *mle = NULL;

		FUNC12(0, "sending assert master to %d (%.*s)\n", to,
		     namelen, lockname);
		FUNC11(&assert, 0, sizeof(assert));
		assert.node_idx = dlm->node_num;
		assert.namelen = namelen;
		FUNC10(assert.name, lockname, namelen);
		assert.flags = FUNC3(flags);

		tmpret = FUNC13(DLM_ASSERT_MASTER_MSG, dlm->key,
					    &assert, sizeof(assert), to, &r);
		if (tmpret < 0) {
			FUNC12(0, "assert_master returned %d!\n", tmpret);
			if (!FUNC5(tmpret)) {
				FUNC12(ML_ERROR, "unhandled error=%d!\n", tmpret);
				FUNC0();
			}
			/* a node died.  finish out the rest of the nodes. */
			FUNC12(0, "link to %d went down!\n", to);
			/* any nonzero status return will do */
			ret = tmpret;
			r = 0;
		} else if (r < 0) {
			/* ok, something horribly messed.  kill thyself. */
			FUNC12(ML_ERROR,"during assert master of %.*s to %u, "
			     "got %d.\n", namelen, lockname, to, r);
			FUNC14(&dlm->spinlock);
			FUNC14(&dlm->master_lock);
			if (FUNC4(dlm, &mle, (char *)lockname,
					 namelen)) {
				FUNC9(mle);
				FUNC2(mle);
			}
			FUNC15(&dlm->master_lock);
			FUNC15(&dlm->spinlock);
			FUNC0();
		}

		if (r & DLM_ASSERT_RESPONSE_REASSERT &&
		    !(r & DLM_ASSERT_RESPONSE_MASTERY_REF)) {
				FUNC12(ML_ERROR, "%.*s: very strange, "
				     "master MLE but no lockres on %u\n",
				     namelen, lockname, to);
		}

		if (r & DLM_ASSERT_RESPONSE_REASSERT) {
			FUNC12(0, "%.*s: node %u create mles on other "
			     "nodes and requests a re-assert\n", 
			     namelen, lockname, to);
			reassert = 1;
		}
		if (r & DLM_ASSERT_RESPONSE_MASTERY_REF) {
			FUNC12(0, "%.*s: node %u has a reference to this "
			     "lockres, set the bit in the refmap\n",
			     namelen, lockname, to);
			FUNC14(&res->spinlock);
			FUNC6(to, res);
			FUNC15(&res->spinlock);
		}
	}

	if (reassert)
		goto again;

	FUNC14(&res->spinlock);
	res->state &= ~DLM_LOCK_RES_SETREF_INPROG;
	FUNC15(&res->spinlock);
	FUNC16(&res->wq);

	return ret;
}