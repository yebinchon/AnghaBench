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
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  l3_mode; int /*<<< orphan*/  l3_clk; int /*<<< orphan*/  l3_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* s3c24xx_uda134x_l3_pins ; 
 int /*<<< orphan*/  s3c24xx_uda134x_snd_device ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	FUNC1(s3c24xx_uda134x_snd_device);
	FUNC0(s3c24xx_uda134x_l3_pins->l3_data);
	FUNC0(s3c24xx_uda134x_l3_pins->l3_clk);
	FUNC0(s3c24xx_uda134x_l3_pins->l3_mode);
	return 0;
}