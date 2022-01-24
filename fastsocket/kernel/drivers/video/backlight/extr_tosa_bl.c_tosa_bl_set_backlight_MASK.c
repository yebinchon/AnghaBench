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
typedef  int /*<<< orphan*/  u8 ;
struct tosa_bl_data {TYPE_2__* i2c; int /*<<< orphan*/  comadj; } ;
struct spi_device {int dummy; } ;
struct TYPE_3__ {struct spi_device* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_CH1 ; 
 int /*<<< orphan*/  DAC_CH2 ; 
 int /*<<< orphan*/  TOSA_GPIO_BL_C20MA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int) ; 

__attribute__((used)) static void FUNC3(struct tosa_bl_data *data, int brightness)
{
	struct spi_device *spi = data->i2c->dev.platform_data;

	FUNC1(data->i2c, DAC_CH1, data->comadj);

	/* SetBacklightDuty */
	FUNC1(data->i2c, DAC_CH2, (u8)(brightness & 0xff));

	/* SetBacklightVR */
	FUNC0(TOSA_GPIO_BL_C20MA, brightness & 0x100);

	FUNC2(spi, brightness);
}