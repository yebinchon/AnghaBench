#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  seqnum; int /*<<< orphan*/  direction; int /*<<< orphan*/  ep; } ;
struct TYPE_12__ {scalar_t__ transfer_buffer_length; int /*<<< orphan*/  setup; int /*<<< orphan*/  number_of_packets; } ;
struct TYPE_13__ {TYPE_1__ cmd_submit; } ;
struct usbip_header {TYPE_3__ base; TYPE_2__ u; } ;
struct usbip_device {int dummy; } ;
struct usb_device {int dummy; } ;
struct stub_priv {TYPE_4__* urb; } ;
struct stub_device {TYPE_10__* interface; struct usbip_device ud; } ;
struct TYPE_15__ {int pipe; int /*<<< orphan*/  complete; struct usb_device* dev; void* context; void* setup_packet; void* transfer_buffer; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SDEV_EVENT_ERROR_MALLOC ; 
 int /*<<< orphan*/  SDEV_EVENT_ERROR_SUBMIT ; 
 int /*<<< orphan*/  USBIP_CMD_SUBMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct stub_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (TYPE_10__*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stub_complete ; 
 struct stub_priv* FUNC5 (struct stub_device*,struct usbip_header*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct usbip_header*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (struct usbip_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usbip_header*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct usbip_device*,TYPE_4__*) ; 
 scalar_t__ FUNC16 (struct usbip_device*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC17(struct stub_device *sdev,
				 struct usbip_header *pdu)
{
	int ret;
	struct stub_priv *priv;
	struct usbip_device *ud = &sdev->ud;
	struct usb_device *udev = FUNC2(sdev->interface);
	int pipe = FUNC1(sdev, pdu->base.ep, pdu->base.direction);


	priv = FUNC5(sdev, pdu);
	if (!priv)
		return;

	/* setup a urb */
	if (FUNC8(pipe))
		priv->urb = FUNC7(pdu->u.cmd_submit.number_of_packets,
								GFP_KERNEL);
	else
		priv->urb = FUNC7(0, GFP_KERNEL);

	if (!priv->urb) {
		FUNC0(&sdev->interface->dev, "malloc urb\n");
		FUNC13(ud, SDEV_EVENT_ERROR_MALLOC);
		return;
	}

	/* set priv->urb->transfer_buffer */
	if (pdu->u.cmd_submit.transfer_buffer_length > 0) {
		priv->urb->transfer_buffer =
			FUNC3(pdu->u.cmd_submit.transfer_buffer_length,
								GFP_KERNEL);
		if (!priv->urb->transfer_buffer) {
			FUNC0(&sdev->interface->dev, "malloc x_buff\n");
			FUNC13(ud, SDEV_EVENT_ERROR_MALLOC);
			return;
		}
	}

	/* set priv->urb->setup_packet */
	priv->urb->setup_packet = FUNC3(8, GFP_KERNEL);
	if (!priv->urb->setup_packet) {
		FUNC0(&sdev->interface->dev, "allocate setup_packet\n");
		FUNC13(ud, SDEV_EVENT_ERROR_MALLOC);
		return;
	}
	FUNC4(priv->urb->setup_packet, &pdu->u.cmd_submit.setup, 8);

	/* set other members from the base header of pdu */
	priv->urb->context                = (void *) priv;
	priv->urb->dev                    = udev;
	priv->urb->pipe                   = pipe;
	priv->urb->complete               = stub_complete;

	FUNC14(pdu, priv->urb, USBIP_CMD_SUBMIT, 0);


	if (FUNC16(ud, priv->urb) < 0)
		return;

	if (FUNC15(ud, priv->urb) < 0)
		return;

	/* no need to submit an intercepted request, but harmless? */
	FUNC6(priv->urb);

	/* urb is now ready to submit */
	ret = FUNC9(priv->urb, GFP_KERNEL);

	if (ret == 0)
		FUNC10("submit urb ok, seqnum %u\n",
							pdu->base.seqnum);
	else {
		FUNC0(&sdev->interface->dev, "submit_urb error, %d\n", ret);
		FUNC11(pdu);
		FUNC12(priv->urb);

		/*
		 * Pessimistic.
		 * This connection will be discarded.
		 */
		FUNC13(ud, SDEV_EVENT_ERROR_SUBMIT);
	}

	FUNC10("Leave\n");
	return;
}