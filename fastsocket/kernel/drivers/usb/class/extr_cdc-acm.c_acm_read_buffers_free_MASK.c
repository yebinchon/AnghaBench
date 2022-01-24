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
struct usb_device {int dummy; } ;
struct acm {int rx_buflimit; TYPE_1__* rb; int /*<<< orphan*/  readsize; int /*<<< orphan*/  control; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 struct usb_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct acm *acm)
{
	struct usb_device *usb_dev = FUNC0(acm->control);
	int i, n = acm->rx_buflimit;

	for (i = 0; i < n; i++)
		FUNC1(usb_dev, acm->readsize,
					acm->rb[i].base, acm->rb[i].dma);
}