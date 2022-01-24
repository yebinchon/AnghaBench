#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_serial {TYPE_5__* interface; } ;
struct TYPE_10__ {TYPE_3__* cur_altsetting; TYPE_2__* altsetting; } ;
struct TYPE_9__ {int bNumEndpoints; } ;
struct TYPE_8__ {TYPE_4__ desc; } ;
struct TYPE_6__ {scalar_t__ bNumEndpoints; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static int FUNC1(struct usb_serial *serial)
{
	int num_ports;

	FUNC0("numberofendpoints: %d \n",
	    (int)serial->interface->cur_altsetting->desc.bNumEndpoints);
	FUNC0("numberofendpoints: %d \n",
	    (int)serial->interface->altsetting->desc.bNumEndpoints);

	num_ports =
	    (serial->interface->cur_altsetting->desc.bNumEndpoints - 1) / 2;

	return num_ports;
}