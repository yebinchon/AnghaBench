#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wahc {TYPE_1__* usb_iface; } ;
struct TYPE_6__ {int bDeviceAddress; int bEndpointAddress; int bmAttribute; int bmRetryOptions; int /*<<< orphan*/  wRPipeIndex; scalar_t__ wNumTransactionErrors; scalar_t__ bOverTheAirInterval; int /*<<< orphan*/  bInterval; scalar_t__ bMaxDataSequence; int /*<<< orphan*/  dwCurrentWindow; scalar_t__ bDataSequence; int /*<<< orphan*/  bSpeed; int /*<<< orphan*/  bHSHubPort; scalar_t__ bHSHubAddress; void* wMaxPacketSize; void* wBlocks; int /*<<< orphan*/  wRequests; } ;
struct wa_rpipe {TYPE_3__ descr; int /*<<< orphan*/  segs_available; } ;
struct usb_wireless_ep_comp_descriptor {scalar_t__ bMaxSequence; } ;
struct TYPE_5__ {int bEndpointAddress; int wMaxPacketSize; int bmAttributes; int /*<<< orphan*/  bInterval; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;
struct usb_device {int devnum; int /*<<< orphan*/  portnum; int /*<<< orphan*/  authenticated; scalar_t__ wusb; } ;
struct urb {struct usb_device* dev; int /*<<< orphan*/  pipe; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int ENOMSG ; 
 int /*<<< orphan*/  UWB_PHY_RATE_200 ; 
 int /*<<< orphan*/  UWB_PHY_RATE_53 ; 
 int /*<<< orphan*/  FUNC0 (struct wahc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wahc*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct usb_wireless_ep_comp_descriptor* FUNC8 (struct device*,struct usb_host_endpoint*) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct wa_rpipe *rpipe, struct wahc *wa,
		     struct usb_host_endpoint *ep, struct urb *urb, gfp_t gfp)
{
	int result = -ENOMSG;	/* better code for lack of companion? */
	struct device *dev = &wa->usb_iface->dev;
	struct usb_device *usb_dev = urb->dev;
	struct usb_wireless_ep_comp_descriptor *epcd;
	u8 unauth;

	epcd = FUNC8(dev, ep);
	if (epcd == NULL) {
		FUNC6(dev, "ep 0x%02x: can't find companion descriptor\n",
			ep->desc.bEndpointAddress);
		goto error;
	}
	unauth = usb_dev->wusb && !usb_dev->authenticated ? 0x80 : 0;
	FUNC0(wa, FUNC7(rpipe->descr.wRPipeIndex));
	FUNC2(&rpipe->segs_available, FUNC7(rpipe->descr.wRequests));
	/* FIXME: block allocation system; request with queuing and timeout */
	/* FIXME: compute so seg_size > ep->maxpktsize */
	rpipe->descr.wBlocks = FUNC3(16);		/* given */
	/* ep0 maxpktsize is 0x200 (WUSB1.0[4.8.1]) */
	rpipe->descr.wMaxPacketSize = FUNC3(ep->desc.wMaxPacketSize);
	rpipe->descr.bHSHubAddress = 0;			/* reserved: zero */
	rpipe->descr.bHSHubPort = FUNC11(urb->dev->portnum);
	/* FIXME: use maximum speed as supported or recommended by device */
	rpipe->descr.bSpeed = FUNC10(urb->pipe) == 0 ?
		UWB_PHY_RATE_53 : UWB_PHY_RATE_200;

	FUNC5(dev, "addr %u (0x%02x) rpipe #%u ep# %u speed %d\n",
		urb->dev->devnum, urb->dev->devnum | unauth,
		FUNC7(rpipe->descr.wRPipeIndex),
		FUNC10(urb->pipe), rpipe->descr.bSpeed);

	/* see security.c:wusb_update_address() */
	if (FUNC9(urb->dev->devnum == 0x80))
		rpipe->descr.bDeviceAddress = 0;
	else
		rpipe->descr.bDeviceAddress = urb->dev->devnum | unauth;
	rpipe->descr.bEndpointAddress = ep->desc.bEndpointAddress;
	/* FIXME: bDataSequence */
	rpipe->descr.bDataSequence = 0;
	/* FIXME: dwCurrentWindow */
	rpipe->descr.dwCurrentWindow = FUNC4(1);
	/* FIXME: bMaxDataSequence */
	rpipe->descr.bMaxDataSequence = epcd->bMaxSequence - 1;
	rpipe->descr.bInterval = ep->desc.bInterval;
	/* FIXME: bOverTheAirInterval */
	rpipe->descr.bOverTheAirInterval = 0;	/* 0 if not isoc */
	/* FIXME: xmit power & preamble blah blah */
	rpipe->descr.bmAttribute = ep->desc.bmAttributes & 0x03;
	/* rpipe->descr.bmCharacteristics RO */
	/* FIXME: bmRetryOptions */
	rpipe->descr.bmRetryOptions = 15;
	/* FIXME: use for assessing link quality? */
	rpipe->descr.wNumTransactionErrors = 0;
	result = FUNC1(wa, &rpipe->descr,
				   FUNC7(rpipe->descr.wRPipeIndex));
	if (result < 0) {
		FUNC6(dev, "Cannot aim rpipe: %d\n", result);
		goto error;
	}
	result = 0;
error:
	return result;
}