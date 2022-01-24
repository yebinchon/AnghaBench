#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_serial {TYPE_2__** port; struct usb_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bcdDevice; } ;
struct usb_device {TYPE_1__ descriptor; int /*<<< orphan*/  dev; } ;
struct belkin_sa_private {int bad_flow_control; scalar_t__ last_msr; scalar_t__ last_lsr; scalar_t__ control_state; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  write_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct belkin_sa_private* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct belkin_sa_private*) ; 

__attribute__((used)) static int FUNC6(struct usb_serial *serial)
{
	struct usb_device *dev = serial->dev;
	struct belkin_sa_private *priv;

	/* allocate the private data structure */
	priv = FUNC2(sizeof(struct belkin_sa_private), GFP_KERNEL);
	if (!priv)
		return -1; /* error */
	/* set initial values for control structures */
	FUNC4(&priv->lock);
	priv->control_state = 0;
	priv->last_lsr = 0;
	priv->last_msr = 0;
	/* see comments at top of file */
	priv->bad_flow_control =
		(FUNC3(dev->descriptor.bcdDevice) <= 0x0206) ? 1 : 0;
	FUNC0(&dev->dev, "bcdDevice: %04x, bfc: %d\n",
					FUNC3(dev->descriptor.bcdDevice),
					priv->bad_flow_control);

	FUNC1(&serial->port[0]->write_wait);
	FUNC5(serial->port[0], priv);

	return 0;
}