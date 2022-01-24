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
struct vhci_priv {int /*<<< orphan*/  seqnum; struct vhci_device* vdev; } ;
struct vhci_device {int /*<<< orphan*/  devid; } ;
struct TYPE_5__ {int /*<<< orphan*/  setup; } ;
struct TYPE_6__ {TYPE_2__ cmd_submit; } ;
struct TYPE_4__ {int /*<<< orphan*/  ep; int /*<<< orphan*/  direction; int /*<<< orphan*/  devid; int /*<<< orphan*/  seqnum; int /*<<< orphan*/  command; } ;
struct usbip_header {TYPE_3__ u; TYPE_1__ base; } ;
struct urb {scalar_t__ setup_packet; int /*<<< orphan*/  pipe; scalar_t__ hcpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBIP_CMD_SUBMIT ; 
 int /*<<< orphan*/  USBIP_DIR_IN ; 
 int /*<<< orphan*/  USBIP_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usbip_header*,struct urb*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct usbip_header *pdup,  struct urb *urb)
{
	struct vhci_priv *priv = ((struct vhci_priv *)urb->hcpriv);
	struct vhci_device *vdev = priv->vdev;

	FUNC4("URB, local devnum %u, remote devid %u\n",
				FUNC1(urb->pipe), vdev->devid);

	pdup->base.command = USBIP_CMD_SUBMIT;
	pdup->base.seqnum  = priv->seqnum;
	pdup->base.devid   = vdev->devid;
	if (FUNC3(urb->pipe))
		pdup->base.direction = USBIP_DIR_IN;
	else
		pdup->base.direction = USBIP_DIR_OUT;
	pdup->base.ep      = FUNC2(urb->pipe);

	FUNC5(pdup, urb, USBIP_CMD_SUBMIT, 1);

	if (urb->setup_packet)
		FUNC0(pdup->u.cmd_submit.setup, urb->setup_packet, 8);
}