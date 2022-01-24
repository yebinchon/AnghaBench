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
struct wusbhc {int ports_max; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {scalar_t__ change; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,unsigned long*) ; 
 struct wusbhc* FUNC2 (struct usb_hcd*) ; 
 TYPE_1__* FUNC3 (struct wusbhc*,size_t) ; 

int FUNC4(struct usb_hcd *usb_hcd, char *_buf)
{
	struct wusbhc *wusbhc = FUNC2(usb_hcd);
	size_t cnt, size;
	unsigned long *buf = (unsigned long *) _buf;

	/* WE DON'T LOCK, see comment */
	size = wusbhc->ports_max + 1 /* hub bit */;
	size = (size + 8 - 1) / 8;	/* round to bytes */
	for (cnt = 0; cnt < wusbhc->ports_max; cnt++)
		if (FUNC3(wusbhc, cnt)->change)
			FUNC1(cnt + 1, buf);
		else
			FUNC0(cnt + 1, buf);
	return size;
}