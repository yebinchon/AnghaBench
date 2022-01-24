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
typedef  scalar_t__ u8 ;
struct dlm_master_requery {int /*<<< orphan*/  name; int /*<<< orphan*/  namelen; int /*<<< orphan*/  node_idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  key; int /*<<< orphan*/  node_num; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int /*<<< orphan*/  DLM_MASTER_REQUERY_MSG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_master_requery*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_master_requery*,int,scalar_t__,int*) ; 

int FUNC6(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
			  u8 nodenum, u8 *real_master)
{
	int ret = -EINVAL;
	struct dlm_master_requery req;
	int status = DLM_LOCK_RES_OWNER_UNKNOWN;

	FUNC2(&req, 0, sizeof(req));
	req.node_idx = dlm->node_num;
	req.namelen = res->lockname.len;
	FUNC1(req.name, res->lockname.name, res->lockname.len);

	ret = FUNC5(DLM_MASTER_REQUERY_MSG, dlm->key,
				 &req, sizeof(req), nodenum, &status);
	/* XXX: negative status not handled properly here. */
	if (ret < 0)
		FUNC4(ret);
	else {
		FUNC0(status < 0);
		FUNC0(status > DLM_LOCK_RES_OWNER_UNKNOWN);
		*real_master = (u8) (status & 0xff);
		FUNC3(0, "node %u responded to master requery with %u\n",
			  nodenum, *real_master);
		ret = 0;
	}
	return ret;
}