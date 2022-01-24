#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct msm_adsp_ops {int dummy; } ;
struct msm_adsp_module {scalar_t__ open_count; int /*<<< orphan*/  lock; scalar_t__ clk; int /*<<< orphan*/  name; int /*<<< orphan*/ * driver_data; struct msm_adsp_ops* ops; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {scalar_t__ init_info_state; int /*<<< orphan*/  init_info_wait; } ;

/* Variables and functions */
 scalar_t__ ADSP_STATE_INIT_INFO ; 
 int EBUSY ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  INT_ADSP ; 
 int /*<<< orphan*/  RPC_ADSP_RTOS_CMD_REGISTER_APP ; 
 TYPE_1__ adsp_info ; 
 scalar_t__ adsp_open_count ; 
 int /*<<< orphan*/  adsp_open_lock ; 
 int FUNC0 (struct msm_adsp_module*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct msm_adsp_module* FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct msm_adsp_module*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int) ; 

int FUNC16(const char *name, struct msm_adsp_module **out,
		 struct msm_adsp_ops *ops, void *driver_data)
{
	struct msm_adsp_module *module;
	int rc = 0;

#if CONFIG_MSM_AMSS_VERSION >= 6350
	static uint32_t init_info_cmd_sent;
	if (!init_info_cmd_sent) {
		msm_get_init_info();
		init_waitqueue_head(&adsp_info.init_info_wait);
		rc = wait_event_timeout(adsp_info.init_info_wait,
			adsp_info.init_info_state == ADSP_STATE_INIT_INFO,
			5 * HZ);
		if (!rc) {
			pr_info("adsp: INIT_INFO failed\n");
			return -ETIMEDOUT;
		}
		init_info_cmd_sent++;
	}
#endif

	module = FUNC6(&adsp_info, name);
	if (!module)
		return -ENODEV;

	FUNC9(&module->lock);
	FUNC12("adsp: opening module %s\n", module->name);
	if (module->open_count++ == 0 && module->clk)
		FUNC3(module->clk);

	FUNC9(&adsp_open_lock);
	if (adsp_open_count++ == 0) {
		FUNC5(INT_ADSP);
		FUNC13();
	}
	FUNC10(&adsp_open_lock);

	if (module->ops) {
		rc = -EBUSY;
		goto done;
	}

	rc = FUNC0(module);
	if (rc)
		goto done;

	module->ops = ops;
	module->driver_data = driver_data;
	*out = module;
	rc = FUNC14(RPC_ADSP_RTOS_CMD_REGISTER_APP,
					module->id, module);
	if (rc) {
		module->ops = NULL;
		module->driver_data = NULL;
		*out = NULL;
		FUNC11("adsp: REGISTER_APP failed\n");
		goto done;
	}

	FUNC12("adsp: module %s has been registered\n", module->name);

done:
	FUNC9(&adsp_open_lock);
	if (rc && --adsp_open_count == 0) {
		FUNC4(INT_ADSP);
		FUNC1();
	}
	if (rc && --module->open_count == 0 && module->clk)
		FUNC2(module->clk);
	FUNC10(&adsp_open_lock);
	FUNC10(&module->lock);
	return rc;
}