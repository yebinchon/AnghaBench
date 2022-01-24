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

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int USB_PORT_FEAT_HIGHSPEED ; 
 int USB_PORT_FEAT_LOWSPEED ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int port_status)
{
	if (FUNC1(port_status))
		return 1 << USB_PORT_FEAT_LOWSPEED;
	if (FUNC0(port_status))
		return 1 << USB_PORT_FEAT_HIGHSPEED;
	/*
	 * FIXME: Yes, we should check for full speed, but the core uses that as
	 * a default in portspeed() in usb/core/hub.c (which is the only place
	 * USB_PORT_FEAT_*SPEED is used).
	 */
	return 0;
}