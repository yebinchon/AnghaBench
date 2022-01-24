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
struct platform_device {int dummy; } ;
struct ds1wm_data {int /*<<< orphan*/  map; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ds1wm_data*) ; 
 int /*<<< orphan*/  ds1wm_master ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ds1wm_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ds1wm_data*) ; 
 struct ds1wm_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct ds1wm_data *ds1wm_data = FUNC4(pdev);

	FUNC5(&ds1wm_master);
	FUNC0(ds1wm_data);
	FUNC1(ds1wm_data->irq, ds1wm_data);
	FUNC2(ds1wm_data->map);
	FUNC3(ds1wm_data);

	return 0;
}