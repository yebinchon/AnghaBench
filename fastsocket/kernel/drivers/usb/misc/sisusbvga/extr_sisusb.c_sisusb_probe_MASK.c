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
struct usb_interface {int /*<<< orphan*/  minor; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {scalar_t__ speed; int /*<<< orphan*/  dev; int /*<<< orphan*/  devnum; } ;
struct sisusb_usb_data {int ibufsize; int numobufs; int obufsize; int completein; int present; int ready; struct usb_device* sisusb_dev; int /*<<< orphan*/  wait_q; void* SiS_Pr; scalar_t__* urbstatus; TYPE_1__* urbout_context; void** sisurbout; void* sisurbin; void** obuf; void* ibuf; int /*<<< orphan*/  ioportbase; int /*<<< orphan*/  mmiosize; int /*<<< orphan*/  mmiobase; int /*<<< orphan*/  vrambase; int /*<<< orphan*/  minor; int /*<<< orphan*/  lock; int /*<<< orphan*/  kref; } ;
struct SiS_Private {int dummy; } ;
struct TYPE_2__ {int urbindex; void* sisusb; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_NR_CONSOLES ; 
 int NUMOBUFS ; 
 int SISUSB_IBUF_SIZE ; 
 int SISUSB_OBUF_SIZE ; 
 int /*<<< orphan*/  SISUSB_PCI_IOPORTBASE ; 
 int /*<<< orphan*/  SISUSB_PCI_MEMBASE ; 
 int /*<<< orphan*/  SISUSB_PCI_MMIOBASE ; 
 int /*<<< orphan*/  SISUSB_PCI_MMIOSIZE ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct sisusb_usb_data*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sisusb_usb_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sisusb_usb_data*,scalar_t__,scalar_t__) ; 
 scalar_t__ sisusb_first_vc ; 
 int /*<<< orphan*/  FUNC11 (struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct sisusb_usb_data*) ; 
 scalar_t__ FUNC13 (struct sisusb_usb_data*,int) ; 
 scalar_t__ sisusb_last_vc ; 
 int /*<<< orphan*/  FUNC14 (struct sisusb_usb_data*) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*) ; 
 int FUNC18 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_interface*,struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  usb_sisusb_class ; 

__attribute__((used)) static int FUNC20(struct usb_interface *intf,
			const struct usb_device_id *id)
{
	struct usb_device *dev = FUNC4(intf);
	struct sisusb_usb_data *sisusb;
	int retval = 0, i;

	FUNC2(&dev->dev, "USB2VGA dongle found at address %d\n",
		dev->devnum);

	/* Allocate memory for our private */
	if (!(sisusb = FUNC8(sizeof(*sisusb), GFP_KERNEL))) {
		FUNC1(&sisusb->sisusb_dev->dev, "Failed to allocate memory for private data\n");
		return -ENOMEM;
	}
	FUNC7(&sisusb->kref);

	FUNC9(&(sisusb->lock));

	/* Register device */
	if ((retval = FUNC18(intf, &usb_sisusb_class))) {
		FUNC1(&sisusb->sisusb_dev->dev, "Failed to get a minor for device %d\n",
			dev->devnum);
		retval = -ENODEV;
		goto error_1;
	}

	sisusb->sisusb_dev = dev;
	sisusb->minor      = intf->minor;
	sisusb->vrambase   = SISUSB_PCI_MEMBASE;
	sisusb->mmiobase   = SISUSB_PCI_MMIOBASE;
	sisusb->mmiosize   = SISUSB_PCI_MMIOSIZE;
	sisusb->ioportbase = SISUSB_PCI_IOPORTBASE;
	/* Everything else is zero */

	/* Allocate buffers */
	sisusb->ibufsize = SISUSB_IBUF_SIZE;
	if (!(sisusb->ibuf = FUNC6(SISUSB_IBUF_SIZE, GFP_KERNEL))) {
		FUNC1(&sisusb->sisusb_dev->dev, "Failed to allocate memory for input buffer");
		retval = -ENOMEM;
		goto error_2;
	}

	sisusb->numobufs = 0;
	sisusb->obufsize = SISUSB_OBUF_SIZE;
	for (i = 0; i < NUMOBUFS; i++) {
		if (!(sisusb->obuf[i] = FUNC6(SISUSB_OBUF_SIZE, GFP_KERNEL))) {
			if (i == 0) {
				FUNC1(&sisusb->sisusb_dev->dev, "Failed to allocate memory for output buffer\n");
				retval = -ENOMEM;
				goto error_3;
			}
			break;
		} else
			sisusb->numobufs++;

	}

	/* Allocate URBs */
	if (!(sisusb->sisurbin = FUNC15(0, GFP_KERNEL))) {
		FUNC1(&sisusb->sisusb_dev->dev, "Failed to allocate URBs\n");
		retval = -ENOMEM;
		goto error_3;
	}
	sisusb->completein = 1;

	for (i = 0; i < sisusb->numobufs; i++) {
		if (!(sisusb->sisurbout[i] = FUNC15(0, GFP_KERNEL))) {
			FUNC1(&sisusb->sisusb_dev->dev, "Failed to allocate URBs\n");
			retval = -ENOMEM;
			goto error_4;
		}
		sisusb->urbout_context[i].sisusb = (void *)sisusb;
		sisusb->urbout_context[i].urbindex = i;
		sisusb->urbstatus[i] = 0;
	}

	FUNC2(&sisusb->sisusb_dev->dev, "Allocated %d output buffers\n", sisusb->numobufs);

#ifdef INCL_SISUSB_CON
	/* Allocate our SiS_Pr */
	if (!(sisusb->SiS_Pr = kmalloc(sizeof(struct SiS_Private), GFP_KERNEL))) {
		dev_err(&sisusb->sisusb_dev->dev, "Failed to allocate SiS_Pr\n");
	}
#endif

	/* Do remaining init stuff */

	FUNC3(&sisusb->wait_q);

	FUNC19(intf, sisusb);

	FUNC17(sisusb->sisusb_dev);

	sisusb->present = 1;

	if (dev->speed == USB_SPEED_HIGH) {
		int initscreen = 1;
#ifdef INCL_SISUSB_CON
		if (sisusb_first_vc > 0 &&
		    sisusb_last_vc > 0 &&
		    sisusb_first_vc <= sisusb_last_vc &&
		    sisusb_last_vc <= MAX_NR_CONSOLES)
			initscreen = 0;
#endif
		if (FUNC13(sisusb, initscreen))
			FUNC1(&sisusb->sisusb_dev->dev, "Failed to early initialize device\n");

	} else
		FUNC2(&sisusb->sisusb_dev->dev, "Not attached to USB 2.0 hub, deferring init\n");

	sisusb->ready = 1;

#ifdef SISUSBENDIANTEST
	dev_dbg(&sisusb->sisusb_dev->dev, "*** RWTEST ***\n");
	sisusb_testreadwrite(sisusb);
	dev_dbg(&sisusb->sisusb_dev->dev, "*** RWTEST END ***\n");
#endif

#ifdef INCL_SISUSB_CON
	sisusb_console_init(sisusb, sisusb_first_vc, sisusb_last_vc);
#endif

	return 0;

error_4:
	FUNC12(sisusb);
error_3:
	FUNC11(sisusb);
error_2:
	FUNC16(intf, &usb_sisusb_class);
error_1:
	FUNC5(sisusb);
	return retval;
}