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
struct msm_adsp_module {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; int /*<<< orphan*/  state_wait; int /*<<< orphan*/  id; } ;

/* Variables and functions */
#define  ADSP_STATE_DISABLED 131 
#define  ADSP_STATE_DISABLING 130 
#define  ADSP_STATE_ENABLED 129 
#define  ADSP_STATE_ENABLING 128 
 int EBUSY ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  RPC_ADSP_RTOS_CMD_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct msm_adsp_module*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 

int FUNC7(struct msm_adsp_module *module)
{
	int rc = 0;

	FUNC3("msm_adsp_enable() '%s'state[%d] id[%d]\n",
		module->name, module->state, module->id);

	FUNC0(&module->lock);
	switch (module->state) {
	case ADSP_STATE_DISABLED:
		rc = FUNC5(RPC_ADSP_RTOS_CMD_ENABLE,
						module->id, module);
		if (rc)
			break;
		module->state = ADSP_STATE_ENABLING;
		FUNC1(&module->lock);
		rc = FUNC6(module->state_wait,
					module->state != ADSP_STATE_ENABLING,
					1 * HZ);
		FUNC0(&module->lock);
		if (module->state == ADSP_STATE_ENABLED) {
			rc = 0;
		} else {
			FUNC2("adsp: module '%s' enable timed out\n",
			       module->name);
			rc = -ETIMEDOUT;
		}
		break;
	case ADSP_STATE_ENABLING:
		FUNC4("adsp: module '%s' enable in progress\n",
			   module->name);
		break;
	case ADSP_STATE_ENABLED:
		FUNC4("adsp: module '%s' already enabled\n",
			   module->name);
		break;
	case ADSP_STATE_DISABLING:
		FUNC2("adsp: module '%s' disable in progress\n",
		       module->name);
		rc = -EBUSY;
		break;
	}
	FUNC1(&module->lock);
	return rc;
}