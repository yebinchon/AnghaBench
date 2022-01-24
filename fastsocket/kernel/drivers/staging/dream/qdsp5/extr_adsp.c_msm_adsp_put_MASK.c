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
struct msm_adsp_module {scalar_t__ open_count; scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; scalar_t__ rpc_client; int /*<<< orphan*/ * driver_data; int /*<<< orphan*/ * ops; scalar_t__ clk; } ;

/* Variables and functions */
 scalar_t__ ADSP_STATE_DISABLED ; 
 int /*<<< orphan*/  INT_ADSP ; 
 int /*<<< orphan*/  adsp_cmd_lock ; 
 scalar_t__ adsp_open_count ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_adsp_module*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(struct msm_adsp_module *module)
{
	unsigned long flags;

	FUNC5(&module->lock);
	if (--module->open_count == 0 && module->clk)
		FUNC1(module->clk);
	if (module->ops) {
		FUNC7("adsp: closing module %s\n", module->name);

		/* lock to ensure a dsp event cannot be delivered
		 * during or after removal of the ops and driver_data
		 */
		FUNC8(&adsp_cmd_lock, flags);
		module->ops = NULL;
		module->driver_data = NULL;
		FUNC9(&adsp_cmd_lock, flags);

		if (module->state != ADSP_STATE_DISABLED) {
			FUNC7("adsp: disabling module %s\n", module->name);
			FUNC3(module);
		}

		FUNC4(module->rpc_client);
		module->rpc_client = 0;
		if (--adsp_open_count == 0) {
			FUNC2(INT_ADSP);
			FUNC0();
			FUNC7("adsp: disable interrupt\n");
		}
	} else {
		FUNC7("adsp: module %s is already closed\n", module->name);
	}
	FUNC6(&module->lock);
}