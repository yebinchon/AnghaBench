#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_18__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_8__* endpoint; TYPE_5__ desc; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_16__ {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_11__ dev; TYPE_3__ descriptor; } ;
struct TYPE_19__ {TYPE_9__* urb; int /*<<< orphan*/  dma; TYPE_7__* desc; int /*<<< orphan*/ * buf; } ;
struct TYPE_14__ {TYPE_9__* urb; int /*<<< orphan*/  dma; TYPE_7__* desc; int /*<<< orphan*/ * buf; } ;
struct TYPE_17__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
struct mimio {int present; int greeted; struct input_dev* idev; int /*<<< orphan*/  rxhandler; TYPE_6__ in; struct usb_device* udev; int /*<<< orphan*/  phys; TYPE_1__ out; int /*<<< orphan*/  txlock; int /*<<< orphan*/  waitq; TYPE_4__ pktbuf; struct usb_interface* uifc; } ;
struct TYPE_15__ {void* version; void* product; void* vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {int* evbit; int* keybit; int* absbit; int* absmax; int* absfuzz; TYPE_11__ dev; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; scalar_t__* absflat; scalar_t__* absmin; TYPE_2__ id; int /*<<< orphan*/  close; int /*<<< orphan*/  open; } ;
struct TYPE_22__ {struct usb_device* dev; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_20__ {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_21__ {TYPE_7__ desc; } ;

/* Variables and functions */
 size_t ABS_MISC ; 
 size_t ABS_X ; 
 size_t ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 size_t BTN_0 ; 
 size_t BTN_1 ; 
 size_t BTN_2 ; 
 size_t BTN_3 ; 
 size_t BTN_4 ; 
 size_t BTN_5 ; 
 size_t BTN_MISC ; 
 int BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BUS_USB ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LOCALBTN_TOOL_EXTRA2 ; 
 int /*<<< orphan*/  MIMIO_MAXNAMELEN ; 
 int MIMIO_MAXPAYLOAD ; 
 int /*<<< orphan*/  MIMIO_XRANGE_MAX ; 
 int /*<<< orphan*/  MIMIO_YRANGE_MAX ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC6 () ; 
 int FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,struct mimio*) ; 
 struct usb_device* FUNC10 (struct usb_interface*) ; 
 struct mimio* FUNC11 (int,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mimio_close ; 
 int /*<<< orphan*/  FUNC13 (struct mimio*) ; 
 int FUNC14 (struct mimio*) ; 
 int /*<<< orphan*/  mimio_irq_in ; 
 int /*<<< orphan*/  mimio_irq_out ; 
 int /*<<< orphan*/  mimio_name ; 
 int /*<<< orphan*/  mimio_open ; 
 int /*<<< orphan*/  mimio_rx_handler ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 void* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC20 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_9__*,struct usb_device*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct mimio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_device*,char*,int) ; 
 int FUNC23 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int FUNC25 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_interface*,struct mimio*) ; 
 int FUNC27 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC28 (TYPE_9__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct usb_interface *ifc,
		       const struct usb_device_id *id)
{
	char path[64];
	int pipe, maxp;
	struct mimio *mimio;
	struct usb_device *udev;
	struct usb_host_interface *hostifc;
	struct input_dev *input_dev;
	int res = 0;
	int i;

	udev = FUNC10(ifc);

	mimio = FUNC11(sizeof(struct mimio), GFP_KERNEL);
	if (!mimio)
		return -ENOMEM;

	input_dev = FUNC6();
	if (!input_dev) {
		FUNC13(mimio);
		return -ENOMEM;
	}

	mimio->uifc = ifc;
	mimio->udev = udev;
	mimio->pktbuf.p = mimio->pktbuf.buf;
	mimio->pktbuf.q = mimio->pktbuf.buf;
	/* init_input_dev(mimio->idev); */
	mimio->idev = input_dev;
	FUNC5(&mimio->waitq);
	FUNC18(&mimio->txlock);
	hostifc = ifc->cur_altsetting;

	if (hostifc->desc.bNumEndpoints != 2) {
		FUNC4(&udev->dev, "Unexpected endpoint count: %d.\n",
			hostifc->desc.bNumEndpoints);
		FUNC13(mimio);
		return -ENODEV;
	}

	mimio->in.desc = &(hostifc->endpoint[0].desc);
	mimio->out.desc = &(hostifc->endpoint[1].desc);

	mimio->in.buf = FUNC20(udev, MIMIO_MAXPAYLOAD, GFP_KERNEL,
					 &mimio->in.dma);
	mimio->out.buf = FUNC20(udev, MIMIO_MAXPAYLOAD, GFP_KERNEL,
					  &mimio->out.dma);

	if (mimio->in.buf == NULL || mimio->out.buf == NULL) {
		FUNC4(&udev->dev, "usb_buffer_alloc failure.\n");
		FUNC13(mimio);
		return -ENOMEM;
	}

	mimio->in.urb = FUNC19(0, GFP_KERNEL);
	mimio->out.urb = FUNC19(0, GFP_KERNEL);

	if (mimio->in.urb == NULL || mimio->out.urb == NULL) {
		FUNC4(&udev->dev, "usb_alloc_urb failure.\n");
		FUNC13(mimio);
		return -ENOMEM;
	}

	/*
	 * Build the input urb.
	 */
	pipe = FUNC25(udev, mimio->in.desc->bEndpointAddress);
	maxp = FUNC23(udev, pipe, FUNC24(pipe));
	if (maxp > MIMIO_MAXPAYLOAD)
		maxp = MIMIO_MAXPAYLOAD;
	FUNC21(mimio->in.urb, udev, pipe, mimio->in.buf, maxp,
			 mimio_irq_in, mimio, mimio->in.desc->bInterval);
	mimio->in.urb->transfer_dma = mimio->in.dma;
	mimio->in.urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	/*
	 * Build the output urb.
	 */
	pipe = FUNC27(udev, mimio->out.desc->bEndpointAddress);
	maxp = FUNC23(udev, pipe, FUNC24(pipe));
	if (maxp > MIMIO_MAXPAYLOAD)
		maxp = MIMIO_MAXPAYLOAD;
	FUNC21(mimio->out.urb, udev, pipe, mimio->out.buf, maxp,
			 mimio_irq_out, mimio, mimio->out.desc->bInterval);
	mimio->out.urb->transfer_dma = mimio->out.dma;
	mimio->out.urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	/*
	 * Build input device info
	 */
	FUNC22(udev, path, 64);
	FUNC17(mimio->phys, MIMIO_MAXNAMELEN, "%s/input0", path);
	FUNC9(input_dev, mimio);
	/* input_dev->dev = &ifc->dev; */
	input_dev->open = mimio_open;
	input_dev->close = mimio_close;
	input_dev->name = mimio_name;
	input_dev->phys = mimio->phys;
	input_dev->dev.parent = &ifc->dev;

	input_dev->id.bustype = BUS_USB;
	input_dev->id.vendor = FUNC12(udev->descriptor.idVendor);
	input_dev->id.product = FUNC12(udev->descriptor.idProduct);
	input_dev->id.version = FUNC12(udev->descriptor.bcdDevice);

	input_dev->evbit[0] |= FUNC0(EV_KEY) | FUNC0(EV_ABS);
	for (i = BTN_TOOL_PEN; i <= LOCALBTN_TOOL_EXTRA2; ++i)
		FUNC16(i, input_dev->keybit);

	input_dev->keybit[FUNC2(BTN_MISC)] |= FUNC1(BTN_0) |
						 FUNC1(BTN_1) |
						 FUNC1(BTN_2) |
						 FUNC1(BTN_3) |
						 FUNC1(BTN_4) |
						 FUNC1(BTN_5);
	/*   input_dev->keybit[BTN_MOUSE] |= BIT(BTN_LEFT); */
	input_dev->absbit[0] |= FUNC1(ABS_X) | FUNC1(ABS_Y);
	FUNC8(input_dev, ABS_X, 0, MIMIO_XRANGE_MAX, 0, 0);
	FUNC8(input_dev, ABS_Y, 0, MIMIO_YRANGE_MAX, 0, 0);
	input_dev->absbit[FUNC2(ABS_MISC)] |= FUNC1(ABS_MISC);

#if 0
	input_dev->absmin[ABS_X] = 0;
	input_dev->absmin[ABS_Y] = 0;
	input_dev->absmax[ABS_X] = 9600;
	input_dev->absmax[ABS_Y] = 4800;
	input_dev->absfuzz[ABS_X] = 0;
	input_dev->absfuzz[ABS_Y] = 0;
	input_dev->absflat[ABS_X] = 0;
	input_dev->absflat[ABS_Y] = 0;
#endif

#if 0
	/* this will just reduce the precision */
	input_dev->absfuzz[ABS_X] = 8; /* experimental; may need to change */
	input_dev->absfuzz[ABS_Y] = 8; /* experimental; may need to change */
#endif

	/*
	 * Register the input device.
	 */
	res = FUNC7(mimio->idev);
	if (res) {
		FUNC4(&udev->dev, "input_register_device failure (%d)\n",
			res);
		FUNC13(mimio);
		return -EIO;
	}
	FUNC3(&mimio->idev->dev, "input: %s on %s (res = %d).\n",
		input_dev->name, input_dev->phys, res);

	FUNC26(ifc, mimio);
	mimio->present = 1;

	/*
	 * Submit the input urb to the usb subsystem.
	 */
	mimio->in.urb->dev = mimio->udev;
	res = FUNC28(mimio->in.urb, GFP_KERNEL);
	if (res) {
		FUNC4(&mimio->idev->dev, "usb_submit_urb failure (%d)\n",
			res);
		FUNC13(mimio);
		return -EIO;
	}

	/*
	 * Attempt to greet the mimio after giving
	 * it some post-init settling time.
	 *
	 * note: sometimes this sleep interval isn't
	 * long enough to permit the device to re-init
	 * after a hot-swap; maybe need to bump it up.
	 *
	 * As it is, this probably breaks module unloading support!
	 */
	FUNC15(1024);

	res = FUNC14(mimio);
	if (res == 0) {
		FUNC3(&mimio->idev->dev, "Mimio greeted OK.\n");
		mimio->greeted = 1;
		mimio->rxhandler = mimio_rx_handler;
	} else {
		FUNC3(&mimio->idev->dev, "Mimio greet Failure (%d)\n", res);
	}

	return 0;
}