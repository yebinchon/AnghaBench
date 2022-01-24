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
struct dlm_assert_joined {int /*<<< orphan*/  name_len; int /*<<< orphan*/  domain; int /*<<< orphan*/  node_idx; } ;
typedef  int /*<<< orphan*/  assert_msg ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_ASSERT_JOINED_MSG ; 
 int /*<<< orphan*/  DLM_MOD_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_assert_joined*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_assert_joined*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dlm_ctxt *dlm,
				    unsigned int node)
{
	int status;
	struct dlm_assert_joined assert_msg;

	FUNC2(0, "Sending join assert to node %u\n", node);

	FUNC1(&assert_msg, 0, sizeof(assert_msg));
	assert_msg.node_idx = dlm->node_num;
	assert_msg.name_len = FUNC5(dlm->name);
	FUNC0(assert_msg.domain, dlm->name, assert_msg.name_len);

	status = FUNC4(DLM_ASSERT_JOINED_MSG, DLM_MOD_KEY,
				    &assert_msg, sizeof(assert_msg), node,
				    NULL);
	if (status < 0)
		FUNC3(status);

	return status;
}