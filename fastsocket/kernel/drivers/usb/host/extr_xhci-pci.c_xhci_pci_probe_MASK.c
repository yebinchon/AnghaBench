#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct xhci_hcd {int quirks; TYPE_2__* shared_hcd; } ;
struct usb_hcd {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_9__ {TYPE_1__* root_hub; } ;
struct TYPE_8__ {scalar_t__ hcd_priv; } ;
struct TYPE_7__ {int lpm_capable; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IRQF_DISABLED ; 
 int IRQF_SHARED ; 
 int XHCI_LPM_SUPPORT ; 
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (TYPE_2__*) ; 
 struct xhci_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC5 (struct hc_driver*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_hcd*) ; 
 int FUNC6 (struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *dev, const struct pci_device_id *id)
{
	int retval;
	struct xhci_hcd *xhci;
	struct hc_driver *driver;
	struct usb_hcd *hcd;

	driver = (struct hc_driver *)id->driver_data;
	/* Register the USB 2.0 roothub.
	 * FIXME: USB core must know to register the USB 2.0 roothub first.
	 * This is sort of silly, because we could just set the HCD driver flags
	 * to say USB 2.0, but I'm not sure what the implications would be in
	 * the other parts of the HCD code.
	 */
	retval = FUNC6(dev, id);

	if (retval)
		return retval;

	/* USB 2.0 roothub is stored in the PCI device now. */
	hcd = FUNC0(&dev->dev);
	xhci = FUNC2(hcd);
	xhci->shared_hcd = FUNC5(driver, &dev->dev,
				FUNC3(dev), hcd);
	if (!xhci->shared_hcd) {
		retval = -ENOMEM;
		goto dealloc_usb2_hcd;
	}

	/* Set the xHCI pointer before xhci_pci_setup() (aka hcd_driver.reset)
	 * is called by usb_add_hcd().
	 */
	*((struct xhci_hcd **) xhci->shared_hcd->hcd_priv) = xhci;

	retval = FUNC4(xhci->shared_hcd, dev->irq,
			IRQF_DISABLED | IRQF_SHARED);
	if (retval)
		goto put_usb3_hcd;
	/* Roothub already marked as USB 3.0 speed */

	/* We know the LPM timeout algorithms for this host, let the USB core
	 * enable and disable LPM for devices under the USB 3.0 roothub.
	 */
	if (xhci->quirks & XHCI_LPM_SUPPORT)
		FUNC1(xhci->shared_hcd)->root_hub->lpm_capable = 1;

	return 0;

put_usb3_hcd:
	FUNC8(xhci->shared_hcd);
dealloc_usb2_hcd:
	FUNC7(dev);
	return retval;
}