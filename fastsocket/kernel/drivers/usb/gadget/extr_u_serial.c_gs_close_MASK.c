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
struct gserial {int /*<<< orphan*/  (* disconnect ) (struct gserial*) ;} ;
struct gs_port {int open_count; int openclose; int /*<<< orphan*/  port_lock; int /*<<< orphan*/  close_wait; int /*<<< orphan*/  port_num; int /*<<< orphan*/ * port_tty; int /*<<< orphan*/  port_write_buf; struct gserial* port_usb; int /*<<< orphan*/  drain_wait; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int GS_CLOSE_TIMEOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gs_port*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct gserial*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct tty_struct *tty, struct file *file)
{
	struct gs_port *port = tty->driver_data;
	struct gserial	*gser;

	FUNC6(&port->port_lock);

	if (port->open_count != 1) {
		if (port->open_count == 0)
			FUNC0(1);
		else
			--port->open_count;
		goto exit;
	}

	FUNC5("gs_close: ttyGS%d (%p,%p) ...\n", port->port_num, tty, file);

	/* mark port as closing but in use; we can drop port lock
	 * and sleep if necessary
	 */
	port->openclose = true;
	port->open_count = 0;

	gser = port->port_usb;
	if (gser && gser->disconnect)
		gser->disconnect(gser);

	/* wait for circular write buffer to drain, disconnect, or at
	 * most GS_CLOSE_TIMEOUT seconds; then discard the rest
	 */
	if (FUNC2(&port->port_write_buf) > 0 && gser) {
		FUNC7(&port->port_lock);
		FUNC9(port->drain_wait,
					FUNC4(port),
					GS_CLOSE_TIMEOUT * HZ);
		FUNC6(&port->port_lock);
		gser = port->port_usb;
	}

	/* Iff we're disconnected, there can be no I/O in flight so it's
	 * ok to free the circular buffer; else just scrub it.  And don't
	 * let the push tasklet fire again until we're re-opened.
	 */
	if (gser == NULL)
		FUNC3(&port->port_write_buf);
	else
		FUNC1(&port->port_write_buf);

	tty->driver_data = NULL;
	port->port_tty = NULL;

	port->openclose = false;

	FUNC5("gs_close: ttyGS%d (%p,%p) done!\n",
			port->port_num, tty, file);

	FUNC10(&port->close_wait);
exit:
	FUNC7(&port->port_lock);
}