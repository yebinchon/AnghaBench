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
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  imx_udc_bulk_irq ; 
 int /*<<< orphan*/  imx_udc_ctrl_irq ; 
 int /*<<< orphan*/  imx_udc_irq ; 

irq_handler_t FUNC0(int i)
{
	switch (i) {
	case 0:
		return imx_udc_ctrl_irq;
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
		return imx_udc_bulk_irq;
	default:
		return imx_udc_irq;
	}
}