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
struct ds1wm_driver_data {int /*<<< orphan*/  clock_rate; } ;
struct ds1wm_data {TYPE_2__* pdev; TYPE_1__* cell; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable ) (TYPE_2__*) ;struct ds1wm_driver_data* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1WM_CLKDIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ds1wm_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ds1wm_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct ds1wm_data *ds1wm_data)
{
	int divisor;
	struct ds1wm_driver_data *plat = ds1wm_data->cell->driver_data;

	if (ds1wm_data->cell->enable)
		ds1wm_data->cell->enable(ds1wm_data->pdev);

	divisor = FUNC1(plat->clock_rate);
	if (divisor == 0) {
		FUNC0(&ds1wm_data->pdev->dev,
			"no suitable divisor for %dHz clock\n",
			plat->clock_rate);
		return;
	}
	FUNC3(ds1wm_data, DS1WM_CLKDIV, divisor);

	/* Let the w1 clock stabilize. */
	FUNC4(1);

	FUNC2(ds1wm_data);
}