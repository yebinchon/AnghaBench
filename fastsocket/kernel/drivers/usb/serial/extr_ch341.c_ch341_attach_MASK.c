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
struct usb_serial {int /*<<< orphan*/ * port; int /*<<< orphan*/  dev; } ;
struct ch341_private {int line_control; int /*<<< orphan*/  baud_rate; int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CH341_BIT_DTR ; 
 int CH341_BIT_RTS ; 
 int /*<<< orphan*/  DEFAULT_BAUD_RATE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ch341_private*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ch341_private*) ; 
 struct ch341_private* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ch341_private*) ; 

__attribute__((used)) static int FUNC7(struct usb_serial *serial)
{
	struct ch341_private *priv;
	int r;

	FUNC1("ch341_attach()");

	/* private data */
	priv = FUNC4(sizeof(struct ch341_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC5(&priv->lock);
	FUNC2(&priv->delta_msr_wait);
	priv->baud_rate = DEFAULT_BAUD_RATE;
	priv->line_control = CH341_BIT_RTS | CH341_BIT_DTR;

	r = FUNC0(serial->dev, priv);
	if (r < 0)
		goto error;

	FUNC6(serial->port[0], priv);
	return 0;

error:	FUNC3(priv);
	return r;
}