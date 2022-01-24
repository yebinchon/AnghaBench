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
struct lcd_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_PWL_CLK_ENABLE ; 
 int /*<<< orphan*/  OMAP_PWL_ENABLE ; 
 int /*<<< orphan*/  PWL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lcd_panel *panel)
{
	/* configure PWL pin */
	FUNC1(PWL);

	/* Enable PWL unit */
	FUNC2(0x01, OMAP_PWL_CLK_ENABLE);

	/* Set PWL level */
	FUNC2(0xFF, OMAP_PWL_ENABLE);

	/* set GPIO2 high (lcd power enabled) */
	FUNC0(2, 1);

	return 0;
}