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
struct gs_port {int /*<<< orphan*/  port_num; int /*<<< orphan*/  port_lock; int /*<<< orphan*/  port_write_buf; scalar_t__ port_usb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty)
{
	struct gs_port	*port = tty->driver_data;
	unsigned long	flags;
	int		room = 0;

	FUNC2(&port->port_lock, flags);
	if (port->port_usb)
		room = FUNC0(&port->port_write_buf);
	FUNC3(&port->port_lock, flags);

	FUNC1("gs_write_room: (%d,%p) room=%d\n",
		port->port_num, tty, room);

	return room;
}