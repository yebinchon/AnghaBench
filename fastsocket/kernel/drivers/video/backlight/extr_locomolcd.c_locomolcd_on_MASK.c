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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {TYPE_1__ dev; scalar_t__ mapbase; } ;

/* Variables and functions */
 scalar_t__ LOCOMO_CPSD ; 
 int /*<<< orphan*/  LOCOMO_GPIO_LCD_MOD ; 
 int /*<<< orphan*/  LOCOMO_GPIO_LCD_VEE_ON ; 
 int /*<<< orphan*/  LOCOMO_GPIO_LCD_VSHA_ON ; 
 int /*<<< orphan*/  LOCOMO_GPIO_LCD_VSHD_ON ; 
 scalar_t__ LOCOMO_TC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 TYPE_2__* locomolcd_dev ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(int comadj)
{
	FUNC0(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VSHA_ON, 0);
	FUNC1(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VSHA_ON, 1);
	FUNC4(2);

	FUNC0(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VSHD_ON, 0);
	FUNC1(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VSHD_ON, 1);
	FUNC4(2);

	FUNC2(locomolcd_dev, comadj, 0);
	FUNC4(5);

	FUNC0(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VEE_ON, 0);
	FUNC1(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VEE_ON, 1);
	FUNC4(10);

	/* TFTCRST | CPSOUT=0 | CPSEN */
	FUNC3(0x01, locomolcd_dev->mapbase + LOCOMO_TC);

	/* Set CPSD */
	FUNC3(6, locomolcd_dev->mapbase + LOCOMO_CPSD);

	/* TFTCRST | CPSOUT=0 | CPSEN */
	FUNC3((0x04 | 0x01), locomolcd_dev->mapbase + LOCOMO_TC);
	FUNC4(10);

	FUNC0(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_MOD, 0);
	FUNC1(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_MOD, 1);
}