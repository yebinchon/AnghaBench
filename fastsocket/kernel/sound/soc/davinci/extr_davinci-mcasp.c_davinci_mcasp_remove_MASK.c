#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_platform_data {size_t op_mode; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_4__ {struct snd_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct davinci_audio_dev {int /*<<< orphan*/ * clk; } ;
struct TYPE_5__ {struct davinci_audio_dev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* davinci_mcasp_dai ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_audio_dev*) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct snd_platform_data *pdata = pdev->dev.platform_data;
	struct davinci_audio_dev *dev;
	struct resource *mem;

	FUNC5(&davinci_mcasp_dai[pdata->op_mode]);
	dev = davinci_mcasp_dai[pdata->op_mode].private_data;
	FUNC0(dev->clk);
	FUNC1(dev->clk);
	dev->clk = NULL;

	mem = FUNC3(pdev, IORESOURCE_MEM, 0);
	FUNC4(mem->start, (mem->end - mem->start) + 1);

	FUNC2(dev);

	return 0;
}