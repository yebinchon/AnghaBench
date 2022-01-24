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
struct usb_serial {TYPE_1__** port; } ;
struct keyspan_pda_private {TYPE_1__* port; struct usb_serial* serial; int /*<<< orphan*/  unthrottle_work; int /*<<< orphan*/  wakeup_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  write_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  keyspan_pda_request_unthrottle ; 
 int /*<<< orphan*/  keyspan_pda_wakeup_write ; 
 struct keyspan_pda_private* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct keyspan_pda_private*) ; 

__attribute__((used)) static int FUNC4(struct usb_serial *serial)
{

	struct keyspan_pda_private *priv;

	/* allocate the private data structures for all ports. Well, for all
	   one ports. */

	priv = FUNC2(sizeof(struct keyspan_pda_private), GFP_KERNEL);
	if (!priv)
		return 1; /* error */
	FUNC3(serial->port[0], priv);
	FUNC1(&serial->port[0]->write_wait);
	FUNC0(&priv->wakeup_work, keyspan_pda_wakeup_write);
	FUNC0(&priv->unthrottle_work, keyspan_pda_request_unthrottle);
	priv->serial = serial;
	priv->port = serial->port[0];
	return 0;
}