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
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {int /*<<< orphan*/  owner; TYPE_2__ lockname; } ;
struct TYPE_3__ {int /*<<< orphan*/  cookie; int /*<<< orphan*/  type; } ;
struct dlm_lock {TYPE_1__ ml; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  key; int /*<<< orphan*/  node_num; } ;
struct dlm_create_lock {int /*<<< orphan*/  name; int /*<<< orphan*/  namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/  cookie; int /*<<< orphan*/  requested_type; int /*<<< orphan*/  node_idx; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
typedef  int /*<<< orphan*/  create ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DLM_CREATE_LOCK_MSG ; 
 int DLM_RECOVERING ; 
 int DLM_REJECTED ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_create_lock*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_create_lock*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static enum dlm_status FUNC11(struct dlm_ctxt *dlm,
					       struct dlm_lock_resource *res,
					       struct dlm_lock *lock, int flags)
{
	struct dlm_create_lock create;
	int tmpret, status = 0;
	enum dlm_status ret;

	FUNC8();

	FUNC6(&create, 0, sizeof(create));
	create.node_idx = dlm->node_num;
	create.requested_type = lock->ml.type;
	create.cookie = lock->ml.cookie;
	create.namelen = res->lockname.len;
	create.flags = FUNC1(flags);
	FUNC5(create.name, res->lockname.name, create.namelen);

	tmpret = FUNC10(DLM_CREATE_LOCK_MSG, dlm->key, &create,
				    sizeof(create), res->owner, &status);
	if (tmpret >= 0) {
		// successfully sent and received
		ret = status;  // this is already a dlm_status
		if (ret == DLM_REJECTED) {
			FUNC7(ML_ERROR, "%s:%.*s: BUG.  this is a stale lockres "
			     "no longer owned by %u.  that node is coming back "
			     "up currently.\n", dlm->name, create.namelen,
			     create.name, res->owner);
			FUNC4(res);
			FUNC0();
		}
	} else {
		FUNC9(tmpret);
		if (FUNC3(tmpret)) {
			ret = DLM_RECOVERING;
			FUNC7(0, "node %u died so returning DLM_RECOVERING "
			     "from lock message!\n", res->owner);
		} else {
			ret = FUNC2(tmpret);
		}
	}

	return ret;
}