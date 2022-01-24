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
struct usb_serial {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_serial*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct usb_serial *serial)
{
	int num_ports = (int)(long)(FUNC0(serial));

	if (num_ports)
		FUNC1(serial, NULL);

	return num_ports;
}