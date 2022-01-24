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
typedef  int /*<<< orphan*/  u8 ;
struct dlm_reco_data_done {int /*<<< orphan*/  dead_node; int /*<<< orphan*/  node_idx; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  key; int /*<<< orphan*/  node_num; } ;
typedef  int /*<<< orphan*/  done_msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DLM_RECO_DATA_DONE_MSG ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_reco_data_done*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_reco_data_done*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(struct dlm_ctxt *dlm, u8 dead_node, u8 send_to)
{
	int ret, tmpret;
	struct dlm_reco_data_done done_msg;

	FUNC2(&done_msg, 0, sizeof(done_msg));
	done_msg.node_idx = dlm->node_num;
	done_msg.dead_node = dead_node;
	FUNC3(0, "sending DATA DONE message to %u, "
	     "my node=%u, dead node=%u\n", send_to, done_msg.node_idx,
	     done_msg.dead_node);

	ret = FUNC5(DLM_RECO_DATA_DONE_MSG, dlm->key, &done_msg,
				 sizeof(done_msg), send_to, &tmpret);
	if (ret < 0) {
		if (!FUNC1(ret)) {
			FUNC4(ret);
			FUNC3(ML_ERROR, "%s: unknown error sending data-done "
			     "to %u\n", dlm->name, send_to);
			FUNC0();
		}
	} else
		ret = tmpret;
	return ret;
}