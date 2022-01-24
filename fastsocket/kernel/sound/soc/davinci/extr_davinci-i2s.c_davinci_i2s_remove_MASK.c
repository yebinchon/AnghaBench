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
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct davinci_mcbsp_dev {int /*<<< orphan*/ * clk; } ;
struct TYPE_3__ {struct davinci_mcbsp_dev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ davinci_i2s_dai ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_mcbsp_dev*) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct davinci_mcbsp_dev *dev = davinci_i2s_dai.private_data;
	struct resource *mem;

	FUNC5(&davinci_i2s_dai);
	FUNC0(dev->clk);
	FUNC1(dev->clk);
	dev->clk = NULL;
	FUNC2(dev);
	mem = FUNC3(pdev, IORESOURCE_MEM, 0);
	FUNC4(mem->start, (mem->end - mem->start) + 1);

	return 0;
}