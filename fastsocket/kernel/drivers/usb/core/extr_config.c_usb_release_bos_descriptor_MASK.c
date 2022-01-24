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
struct usb_device {TYPE_1__* bos; int /*<<< orphan*/  bos_kabi_bit; } ;
struct TYPE_2__ {struct TYPE_2__* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(struct usb_device *dev)
{
	/* RedHat KABI - was this allocated */
	if (!dev->bos_kabi_bit)
		return;

	if (dev->bos) {
		FUNC0(dev->bos->desc);
		FUNC0(dev->bos);
		dev->bos = NULL;
	}
}