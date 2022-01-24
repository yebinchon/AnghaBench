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
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  node_num; } ;
struct dlm_cancel_join {int /*<<< orphan*/  name_len; int /*<<< orphan*/  domain; int /*<<< orphan*/  node_idx; } ;
typedef  int /*<<< orphan*/  cancel_msg ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_CANCEL_JOIN_MSG ; 
 int /*<<< orphan*/  DLM_MOD_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_cancel_join*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_cancel_join*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dlm_ctxt *dlm,
				    unsigned int node)
{
	int status;
	struct dlm_cancel_join cancel_msg;

	FUNC1(&cancel_msg, 0, sizeof(cancel_msg));
	cancel_msg.node_idx = dlm->node_num;
	cancel_msg.name_len = FUNC4(dlm->name);
	FUNC0(cancel_msg.domain, dlm->name, cancel_msg.name_len);

	status = FUNC3(DLM_CANCEL_JOIN_MSG, DLM_MOD_KEY,
				    &cancel_msg, sizeof(cancel_msg), node,
				    NULL);
	if (status < 0) {
		FUNC2(status);
		goto bail;
	}

bail:
	return status;
}