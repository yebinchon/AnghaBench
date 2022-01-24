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
struct imx_udc_struct {scalar_t__ base; } ;
struct imx_ep_struct {struct imx_udc_struct* imx_usb; } ;

/* Variables and functions */
 int EPSTAT_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct imx_ep_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct imx_ep_struct *imx_ep)
{
	struct imx_udc_struct *imx_usb = imx_ep->imx_usb;

	int temp = FUNC2(imx_usb->base + FUNC1(FUNC0(imx_ep)));
	FUNC3(temp | EPSTAT_FLUSH,
		imx_usb->base + FUNC1(FUNC0(imx_ep)));
}