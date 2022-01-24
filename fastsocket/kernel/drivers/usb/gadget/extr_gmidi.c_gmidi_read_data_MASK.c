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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_ep {struct gmidi_device* driver_data; } ;
struct gmidi_device {TYPE_1__* out_substream; int /*<<< orphan*/  out_triggered; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct usb_ep *ep, int cable,
				   uint8_t *data, int length)
{
	struct gmidi_device *dev = ep->driver_data;
	/* cable is ignored, because for now we only have one. */

	if (!dev->out_substream) {
		/* Nobody is listening - throw it on the floor. */
		return;
	}
	if (!FUNC1(dev->out_substream->number, &dev->out_triggered)) {
		return;
	}
	FUNC0(dev->out_substream, data, length);
}