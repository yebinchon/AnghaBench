#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct wdm_device {int wMaxCommand; struct wdm_device* irq; struct wdm_device* orq; struct wdm_device* ubuf; TYPE_6__* validity; void* sbuf; void* wMaxPacketSize; struct usb_interface* intf; TYPE_5__* response; void* inbuf; void* bMaxPacketSize0; void* command; int /*<<< orphan*/  rxwork; int /*<<< orphan*/  inum; int /*<<< orphan*/  wait; int /*<<< orphan*/  iuspin; int /*<<< orphan*/  plock; int /*<<< orphan*/  rlock; int /*<<< orphan*/  wlock; } ;
struct usb_interface {scalar_t__ minor; int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; TYPE_1__* altsetting; } ;
struct TYPE_8__ {int bNumEndpoints; scalar_t__ bInterfaceNumber; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_10__ {void* bMaxPacketSize0; } ;
struct usb_device {TYPE_4__ descriptor; } ;
struct usb_ctrlrequest {int dummy; } ;
struct usb_cdc_dmm_desc {int /*<<< orphan*/  wMaxCommand; } ;
struct TYPE_12__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_9__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_7__ {int* extra; int extralen; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
#define  USB_CDC_DMM_TYPE 129 
#define  USB_CDC_HEADER_TYPE 128 
 int USB_DT_CS_INTERFACE ; 
 scalar_t__ WDM_MINOR_BASE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct wdm_device*) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct wdm_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC15 (struct usb_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,struct usb_device*,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,struct wdm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_interface*,struct wdm_device*) ; 
 int /*<<< orphan*/  wdm_class ; 
 int /*<<< orphan*/  wdm_int_callback ; 
 int /*<<< orphan*/  wdm_rxwork ; 

__attribute__((used)) static int FUNC22(struct usb_interface *intf, const struct usb_device_id *id)
{
	int rv = -EINVAL;
	struct usb_device *udev = FUNC7(intf);
	struct wdm_device *desc;
	struct usb_host_interface *iface;
	struct usb_endpoint_descriptor *ep;
	struct usb_cdc_dmm_desc *dmhd;
	u8 *buffer = intf->altsetting->extra;
	int buflen = intf->altsetting->extralen;
	u16 maxcom = 0;

	if (!buffer)
		goto out;

	while (buflen > 2) {
		if (buffer [1] != USB_DT_CS_INTERFACE) {
			FUNC3(&intf->dev, "skipping garbage\n");
			goto next_desc;
		}

		switch (buffer [2]) {
		case USB_CDC_HEADER_TYPE:
			break;
		case USB_CDC_DMM_TYPE:
			dmhd = (struct usb_cdc_dmm_desc *)buffer;
			maxcom = FUNC11(dmhd->wMaxCommand);
			FUNC2(&intf->dev,
				"Finding maximum buffer length: %d", maxcom);
			break;
		default:
			FUNC3(&intf->dev,
				"Ignoring extra header, type %d, length %d\n",
				buffer[2], buffer[0]);
			break;
		}
next_desc:
		buflen -= buffer[0];
		buffer += buffer[0];
	}

	rv = -ENOMEM;
	desc = FUNC10(sizeof(struct wdm_device), GFP_KERNEL);
	if (!desc)
		goto out;
	FUNC12(&desc->wlock);
	FUNC12(&desc->rlock);
	FUNC12(&desc->plock);
	FUNC13(&desc->iuspin);
	FUNC6(&desc->wait);
	desc->wMaxCommand = maxcom;
	/* this will be expanded and needed in hardware endianness */
	desc->inum = FUNC1((u16)intf->cur_altsetting->desc.bInterfaceNumber);
	desc->intf = intf;
	FUNC0(&desc->rxwork, wdm_rxwork);

	rv = -EINVAL;
	iface = intf->cur_altsetting;
	if (iface->desc.bNumEndpoints != 1)
		goto err;
	ep = &iface->endpoint[0].desc;
	if (!ep || !FUNC17(ep))
		goto err;

	desc->wMaxPacketSize = FUNC11(ep->wMaxPacketSize);
	desc->bMaxPacketSize0 = udev->descriptor.bMaxPacketSize0;

	desc->orq = FUNC9(sizeof(struct usb_ctrlrequest), GFP_KERNEL);
	if (!desc->orq)
		goto err;
	desc->irq = FUNC9(sizeof(struct usb_ctrlrequest), GFP_KERNEL);
	if (!desc->irq)
		goto err;

	desc->validity = FUNC14(0, GFP_KERNEL);
	if (!desc->validity)
		goto err;

	desc->response = FUNC14(0, GFP_KERNEL);
	if (!desc->response)
		goto err;

	desc->command = FUNC14(0, GFP_KERNEL);
	if (!desc->command)
		goto err;

	desc->ubuf = FUNC9(desc->wMaxCommand, GFP_KERNEL);
	if (!desc->ubuf)
		goto err;

	desc->sbuf = FUNC15(FUNC7(intf),
					desc->wMaxPacketSize,
					GFP_KERNEL,
					&desc->validity->transfer_dma);
	if (!desc->sbuf)
		goto err;

	desc->inbuf = FUNC15(FUNC7(intf),
					desc->bMaxPacketSize0,
					GFP_KERNEL,
					&desc->response->transfer_dma);
	if (!desc->inbuf)
		goto err2;

	FUNC18(
		desc->validity,
		FUNC7(intf),
		FUNC19(FUNC7(intf), ep->bEndpointAddress),
		desc->sbuf,
		desc->wMaxPacketSize,
		wdm_int_callback,
		desc,
		ep->bInterval
	);
	desc->validity->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	FUNC21(intf, desc);
	rv = FUNC20(intf, &wdm_class);
	if (rv < 0)
		goto err3;
	else
		FUNC4(&intf->dev, "cdc-wdm%d: USB WDM device\n",
			intf->minor - WDM_MINOR_BASE);
out:
	return rv;
err3:
	FUNC21(intf, NULL);
	FUNC16(FUNC7(desc->intf),
			desc->bMaxPacketSize0,
			desc->inbuf,
			desc->response->transfer_dma);
err2:
	FUNC16(FUNC7(desc->intf),
			desc->wMaxPacketSize,
			desc->sbuf,
			desc->validity->transfer_dma);
err:
	FUNC5(desc);
	FUNC8(desc->ubuf);
	FUNC8(desc->orq);
	FUNC8(desc->irq);
	FUNC8(desc);
	return rv;
}