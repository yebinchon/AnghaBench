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
struct tosa_lcd_data {struct spi_device* spi; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TG_PINICTL ; 
 int /*<<< orphan*/  TOSA_GPIO_TG_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct tosa_lcd_data *data)
{
	struct spi_device *spi = data->spi;

	/* TG LCD VHSA off */
	FUNC2(spi, TG_PINICTL,0x4);
	FUNC1(50);

	/* TG LCD signal off */
	FUNC2(spi, TG_PINICTL,0x6);
	FUNC1(50);

	/* TG Off */
	FUNC0(TOSA_GPIO_TG_ON, 1);
	FUNC1(100);
}