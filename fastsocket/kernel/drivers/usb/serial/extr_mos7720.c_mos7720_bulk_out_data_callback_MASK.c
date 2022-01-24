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
struct urb {int status; struct moschip_port* context; } ;
struct tty_struct {int dummy; } ;
struct moschip_port {scalar_t__ open; TYPE_1__* port; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 struct tty_struct* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct moschip_port *mos7720_port;
	struct tty_struct *tty;
	int status = urb->status;

	if (status) {
		FUNC0("nonzero write bulk status received:%d", status);
		return;
	}

	mos7720_port = urb->context;
	if (!mos7720_port) {
		FUNC0("NULL mos7720_port pointer");
		return ;
	}

	FUNC0("Entering .........");

	tty = FUNC2(&mos7720_port->port->port);

	if (tty && mos7720_port->open)
		FUNC3(tty);
	FUNC1(tty);
}