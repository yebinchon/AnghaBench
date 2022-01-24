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
struct usb_hcd {void* rsrc_len; void* rsrc_start; int /*<<< orphan*/ * regs; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  current_state; } ;
struct hc_driver {int flags; int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int HCD_MASK ; 
 int HCD_MEMORY ; 
 int HCD_USB3 ; 
 int IORESOURCE_IO ; 
 int IRQF_DISABLED ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC2 (void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int) ; 
 void* FUNC8 (struct pci_dev*,int) ; 
 void* FUNC9 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,void*) ; 
 int /*<<< orphan*/  FUNC13 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (void*,void*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct usb_hcd*,int,int) ; 
 struct usb_hcd* FUNC16 (struct hc_driver*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct usb_hcd*) ; 

int FUNC19(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct hc_driver	*driver;
	struct usb_hcd		*hcd;
	int			retval;
	int			hcd_irq = 0;

	if (FUNC17())
		return -ENODEV;

	if (!id)
		return -EINVAL;
	driver = (struct hc_driver *)id->driver_data;
	if (!driver)
		return -EINVAL;

	if (FUNC5(dev) < 0)
		return -ENODEV;
	dev->current_state = PCI_D0;

	/*
	 * The xHCI driver has its own irq management
	 * make sure irq setup is not touched for xhci in generic hcd code
	 */
	if ((driver->flags & HCD_MASK) != HCD_USB3) {
		if (!dev->irq) {
			FUNC1(&dev->dev,
			"Found HC with no IRQ. Check BIOS/PCI %s setup!\n",
				FUNC6(dev));
			retval = -ENODEV;
			goto err1;
		}
		hcd_irq = dev->irq;
	}

	hcd = FUNC16(driver, &dev->dev, FUNC6(dev));
	if (!hcd) {
		retval = -ENOMEM;
		goto err1;
	}

	if (driver->flags & HCD_MEMORY) {
		/* EHCI, OHCI */
		hcd->rsrc_start = FUNC9(dev, 0);
		hcd->rsrc_len = FUNC8(dev, 0);
		if (!FUNC13(hcd->rsrc_start, hcd->rsrc_len,
				driver->description)) {
			FUNC0(&dev->dev, "controller already in use\n");
			retval = -EBUSY;
			goto err2;
		}
		hcd->regs = FUNC2(hcd->rsrc_start, hcd->rsrc_len);
		if (hcd->regs == NULL) {
			FUNC0(&dev->dev, "error mapping memory\n");
			retval = -EFAULT;
			goto err3;
		}

	} else {
		/* UHCI */
		int	region;

		for (region = 0; region < PCI_ROM_RESOURCE; region++) {
			if (!(FUNC7(dev, region) &
					IORESOURCE_IO))
				continue;

			hcd->rsrc_start = FUNC9(dev, region);
			hcd->rsrc_len = FUNC8(dev, region);
			if (FUNC14(hcd->rsrc_start, hcd->rsrc_len,
					driver->description))
				break;
		}
		if (region == PCI_ROM_RESOURCE) {
			FUNC0(&dev->dev, "no i/o regions available\n");
			retval = -EBUSY;
			goto err1;
		}
	}

	FUNC10(dev);

	retval = FUNC15(hcd, hcd_irq, IRQF_DISABLED | IRQF_SHARED);
	if (retval != 0)
		goto err4;
	return retval;

 err4:
	if (driver->flags & HCD_MEMORY) {
		FUNC3(hcd->regs);
 err3:
		FUNC11(hcd->rsrc_start, hcd->rsrc_len);
	} else
		FUNC12(hcd->rsrc_start, hcd->rsrc_len);
 err2:
	FUNC18(hcd);
 err1:
	FUNC4(dev);
	FUNC1(&dev->dev, "init %s fail, %d\n", FUNC6(dev), retval);
	return retval;
}