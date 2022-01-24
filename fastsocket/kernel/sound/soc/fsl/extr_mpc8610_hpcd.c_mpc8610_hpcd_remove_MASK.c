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
struct TYPE_4__ {struct mpc8610_hpcd_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ cpu_dai; } ;
struct mpc8610_hpcd_data {scalar_t__ guts; scalar_t__* dma_irq; scalar_t__* dma; scalar_t__ ssi; TYPE_1__ dai; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mpc8610_hpcd_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct of_device *ofdev)
{
	struct platform_device *sound_device = FUNC0(&ofdev->dev);
	struct mpc8610_hpcd_data *machine_data =
		sound_device->dev.platform_data;

	FUNC6(sound_device);

	if (machine_data->dai.cpu_dai)
		FUNC2(machine_data->dai.cpu_dai);

	if (machine_data->ssi)
		FUNC3(machine_data->ssi);

	if (machine_data->dma[0])
		FUNC3(machine_data->dma[0]);

	if (machine_data->dma[1])
		FUNC3(machine_data->dma[1]);

	if (machine_data->dma_irq[0])
		FUNC4(machine_data->dma_irq[0]);

	if (machine_data->dma_irq[1])
		FUNC4(machine_data->dma_irq[1]);

	if (machine_data->guts)
		FUNC3(machine_data->guts);

	FUNC5(machine_data);
	sound_device->dev.platform_data = NULL;

	FUNC1(&ofdev->dev, NULL);

	return 0;
}