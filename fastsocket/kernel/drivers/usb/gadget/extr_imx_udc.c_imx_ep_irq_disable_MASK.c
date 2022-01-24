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
struct imx_ep_struct {TYPE_1__* imx_usb; } ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (struct imx_ep_struct*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct imx_ep_struct *imx_ep)
{

	int i = FUNC0(imx_ep);

	FUNC3(0x1FF, imx_ep->imx_usb->base + FUNC2(i));
	FUNC3(0x1FF, imx_ep->imx_usb->base + FUNC1(i));
}