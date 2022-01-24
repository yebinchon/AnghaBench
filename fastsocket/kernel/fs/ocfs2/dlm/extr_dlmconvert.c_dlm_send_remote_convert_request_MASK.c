#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kvec {int iov_len; struct dlm_convert_lock* iov_base; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {int /*<<< orphan*/  owner; TYPE_2__ lockname; } ;
struct TYPE_4__ {int /*<<< orphan*/  cookie; } ;
struct dlm_lock {TYPE_3__* lksb; TYPE_1__ ml; } ;
struct dlm_ctxt {int /*<<< orphan*/  key; int /*<<< orphan*/  node_num; } ;
struct dlm_convert_lock {int requested_type; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/  cookie; int /*<<< orphan*/  node_idx; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
struct TYPE_6__ {struct dlm_convert_lock* lvb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_CONVERT_LOCK_MSG ; 
 int DLM_FORWARD ; 
 int DLM_LVB_LEN ; 
 int DLM_MIGRATING ; 
 int /*<<< orphan*/  DLM_NODE_DEATH_WAIT_MAX ; 
 int DLM_NORMAL ; 
 int DLM_NOTQUEUED ; 
 int DLM_RECOVERING ; 
 int LKM_PUT_LVB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_convert_lock*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvec*,size_t,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static enum dlm_status FUNC11(struct dlm_ctxt *dlm,
					   struct dlm_lock_resource *res,
					   struct dlm_lock *lock, int flags, int type)
{
	struct dlm_convert_lock convert;
	int tmpret;
	enum dlm_status ret;
	int status = 0;
	struct kvec vec[2];
	size_t veclen = 1;

	FUNC8("%.*s\n", res->lockname.len, res->lockname.name);

	FUNC6(&convert, 0, sizeof(struct dlm_convert_lock));
	convert.node_idx = dlm->node_num;
	convert.requested_type = type;
	convert.cookie = lock->ml.cookie;
	convert.namelen = res->lockname.len;
	convert.flags = FUNC0(flags);
	FUNC5(convert.name, res->lockname.name, convert.namelen);

	vec[0].iov_len = sizeof(struct dlm_convert_lock);
	vec[0].iov_base = &convert;

	if (flags & LKM_PUT_LVB) {
		/* extra data to send if we are updating lvb */
		vec[1].iov_len = DLM_LVB_LEN;
		vec[1].iov_base = lock->lksb->lvb;
		veclen++;
	}

	tmpret = FUNC10(DLM_CONVERT_LOCK_MSG, dlm->key,
					vec, veclen, res->owner, &status);
	if (tmpret >= 0) {
		// successfully sent and received
		ret = status;  // this is already a dlm_status
		if (ret == DLM_RECOVERING) {
			FUNC7(0, "node %u returned DLM_RECOVERING from convert "
			     "message!\n", res->owner);
		} else if (ret == DLM_MIGRATING) {
			FUNC7(0, "node %u returned DLM_MIGRATING from convert "
			     "message!\n", res->owner);
		} else if (ret == DLM_FORWARD) {
			FUNC7(0, "node %u returned DLM_FORWARD from convert "
			     "message!\n", res->owner);
		} else if (ret != DLM_NORMAL && ret != DLM_NOTQUEUED)
			FUNC2(ret);
	} else {
		FUNC9(tmpret);
		if (FUNC3(tmpret)) {
			/* instead of logging the same network error over
			 * and over, sleep here and wait for the heartbeat
			 * to notice the node is dead.  times out after 5s. */
			FUNC4(dlm, res->owner, 
						DLM_NODE_DEATH_WAIT_MAX);
			ret = DLM_RECOVERING;
			FUNC7(0, "node %u died so returning DLM_RECOVERING "
			     "from convert message!\n", res->owner);
		} else {
			ret = FUNC1(tmpret);
		}
	}

	return ret;
}