#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct TYPE_3__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_SET_REPORT ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct usb_interface*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf, unsigned char type,
			  unsigned char id, void *buf, int size)
{
	return FUNC1(FUNC0(intf),
			       FUNC2(FUNC0(intf), 0),
			       USB_REQ_SET_REPORT,
			       USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			       (type << 8) + id,
			       intf->cur_altsetting->desc.bInterfaceNumber, buf,
			       size, HZ);
}