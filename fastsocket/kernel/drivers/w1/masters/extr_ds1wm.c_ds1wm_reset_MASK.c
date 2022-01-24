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
struct ds1wm_data {TYPE_1__* pdev; int /*<<< orphan*/  slave_present; scalar_t__ active_high; int /*<<< orphan*/ * reset_complete; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DS1WM_CMD ; 
 int DS1WM_CMD_1W_RESET ; 
 int DS1WM_INTEN_EPD ; 
 int DS1WM_INTEN_ERBF ; 
 int DS1WM_INTEN_ETMT ; 
 int DS1WM_INTEN_IAS ; 
 int /*<<< orphan*/  DS1WM_INT_EN ; 
 int /*<<< orphan*/  DS1WM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ds1wm_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  reset_done ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ds1wm_data *ds1wm_data)
{
	unsigned long timeleft;
	FUNC0(reset_done);

	ds1wm_data->reset_complete = &reset_done;

	FUNC3(ds1wm_data, DS1WM_INT_EN, DS1WM_INTEN_EPD |
		(ds1wm_data->active_high ? DS1WM_INTEN_IAS : 0));

	FUNC3(ds1wm_data, DS1WM_CMD, DS1WM_CMD_1W_RESET);

	timeleft = FUNC5(&reset_done, DS1WM_TIMEOUT);
	ds1wm_data->reset_complete = NULL;
	if (!timeleft) {
		FUNC2(&ds1wm_data->pdev->dev, "reset failed\n");
		return 1;
	}

	/* Wait for the end of the reset. According to the specs, the time
	 * from when the interrupt is asserted to the end of the reset is:
	 *     tRSTH  - tPDH  - tPDL - tPDI
	 *     625 us - 60 us - 240 us - 100 ns = 324.9 us
	 *
	 * We'll wait a bit longer just to be sure.
	 * Was udelay(500), but if it is going to busywait the cpu that long,
	 * might as well come back later.
	 */
	FUNC4(1);

	FUNC3(ds1wm_data, DS1WM_INT_EN,
		DS1WM_INTEN_ERBF | DS1WM_INTEN_ETMT | DS1WM_INTEN_EPD |
		(ds1wm_data->active_high ? DS1WM_INTEN_IAS : 0));

	if (!ds1wm_data->slave_present) {
		FUNC1(&ds1wm_data->pdev->dev, "reset: no devices found\n");
		return 1;
	}

	return 0;
}