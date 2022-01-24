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
struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int /*<<< orphan*/  port_lock; scalar_t__ port_usb; int /*<<< orphan*/  port_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gs_port*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct gs_port	*port = tty->driver_data;
	unsigned long	flags;

	FUNC1("gs_flush_chars: (%d,%p)\n", port->port_num, tty);

	FUNC2(&port->port_lock, flags);
	if (port->port_usb)
		FUNC0(port);
	FUNC3(&port->port_lock, flags);
}