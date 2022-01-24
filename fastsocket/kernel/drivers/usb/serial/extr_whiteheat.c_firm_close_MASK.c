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
struct whiteheat_simple {scalar_t__ port; } ;
struct usb_serial_port {TYPE_1__* serial; scalar_t__ number; } ;
typedef  int /*<<< orphan*/  close_command ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_2__ {scalar_t__ minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  WHITEHEAT_CLOSE ; 
 int FUNC0 (struct usb_serial_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(struct usb_serial_port *port)
{
	struct whiteheat_simple close_command;

	close_command.port = port->number - port->serial->minor + 1;
	return FUNC0(port, WHITEHEAT_CLOSE,
			(__u8 *)&close_command, sizeof(close_command));
}