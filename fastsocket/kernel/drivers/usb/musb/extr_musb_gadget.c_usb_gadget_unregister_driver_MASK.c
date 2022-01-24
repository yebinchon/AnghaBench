#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_gadget_driver {int /*<<< orphan*/  (* unbind ) (TYPE_2__*) ;int /*<<< orphan*/  function; } ;
struct TYPE_5__ {int /*<<< orphan*/ * driver; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;
struct musb {int /*<<< orphan*/  lock; scalar_t__ is_active; TYPE_2__ g; struct usb_gadget_driver* gadget_driver; TYPE_3__* xceiv; } ;
struct TYPE_7__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  OTG_STATE_UNDEFINED ; 
 scalar_t__ FUNC1 (struct musb*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*) ; 
 int /*<<< orphan*/  FUNC4 (struct musb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct musb*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct musb*,struct usb_gadget_driver*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 struct musb* the_gadget ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct usb_gadget_driver *driver)
{
	unsigned long	flags;
	int		retval = 0;
	struct musb	*musb = the_gadget;

	if (!driver || !driver->unbind || !musb)
		return -EINVAL;

	/* REVISIT always use otg_set_peripheral() here too;
	 * this needs to shut down the OTG engine.
	 */

	FUNC7(&musb->lock, flags);

#ifdef	CONFIG_USB_MUSB_OTG
	musb_hnp_stop(musb);
#endif

	if (musb->gadget_driver == driver) {

		(void) FUNC2(&musb->g, 0);

		musb->xceiv->state = OTG_STATE_UNDEFINED;
		FUNC9(musb, driver);
		FUNC6(musb->xceiv, NULL);

		FUNC0(3, "unregistering driver %s\n", driver->function);
		FUNC8(&musb->lock, flags);
		driver->unbind(&musb->g);
		FUNC7(&musb->lock, flags);

		musb->gadget_driver = NULL;
		musb->g.dev.driver = NULL;

		musb->is_active = 0;
		FUNC4(musb, 0);
	} else
		retval = -EINVAL;
	FUNC8(&musb->lock, flags);

	if (FUNC1(musb) && retval == 0) {
		FUNC11(FUNC5(musb));
		/* FIXME we need to be able to register another
		 * gadget driver here and have everything work;
		 * that currently misbehaves.
		 */
	}

	return retval;
}