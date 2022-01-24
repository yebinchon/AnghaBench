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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct w1_slave {TYPE_1__ dev; } ;
struct platform_device {int id; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w1_ds2760_bin_attr ; 

__attribute__((used)) static void FUNC4(struct w1_slave *sl)
{
	struct platform_device *pdev = FUNC0(&sl->dev);
	int id = pdev->id;

	FUNC1(pdev);
	FUNC2(id);
	FUNC3(&sl->dev.kobj, &w1_ds2760_bin_attr);
}