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
struct imx_udc_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imx_udc_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_udc_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct imx_udc_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx_udc_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct imx_udc_struct*) ; 

__attribute__((used)) static void FUNC5(struct imx_udc_struct *imx_usb)
{
	/* Reset UDC */
	FUNC4(imx_usb);

	/* Download config to enpoint buffer */
	FUNC0(imx_usb);

	/* Setup interrups */
	FUNC3(imx_usb);

	/* Setup endpoints */
	FUNC1(imx_usb);

	/* Setup fifos */
	FUNC2(imx_usb);
}