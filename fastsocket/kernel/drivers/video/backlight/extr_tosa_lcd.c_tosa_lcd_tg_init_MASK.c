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
struct tosa_lcd_data {int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  TG_GPOSR ; 
 int /*<<< orphan*/  TG_TPOSCTL ; 
 int /*<<< orphan*/  TOSA_GPIO_TG_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct tosa_lcd_data *data)
{
	/* TG on */
	FUNC0(TOSA_GPIO_TG_ON, 0);

	FUNC1(60);

	/* delayed 0clk TCTL signal for VGA */
	FUNC2(data->spi, TG_TPOSCTL, 0x00);
	/* GPOS0=powercontrol, GPOS1=GPIO, GPOS2=TCTL */
	FUNC2(data->spi, TG_GPOSR, 0x02);
}