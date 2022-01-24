#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vhci_unlink {int seqnum; int /*<<< orphan*/  list; int /*<<< orphan*/  unlink_seqnum; } ;
struct vhci_priv {int /*<<< orphan*/  seqnum; int /*<<< orphan*/  list; struct vhci_device* vdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  tcp_socket; } ;
struct vhci_device {int /*<<< orphan*/  status; TYPE_2__ ud; int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  waitq_tx; int /*<<< orphan*/  unlink_tx; struct vhci_priv* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct urb {int /*<<< orphan*/  status; TYPE_2__ ud; int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  waitq_tx; int /*<<< orphan*/  unlink_tx; struct vhci_priv* hcpriv; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  seqnum; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  VDEV_EVENT_ERROR_MALLOC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vhci_priv*) ; 
 struct vhci_unlink* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* the_controller ; 
 int FUNC7 (struct usb_hcd*,struct vhci_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct vhci_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_hcd*,struct vhci_device*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct usb_hcd *hcd, struct urb *urb, int status)
{
	unsigned long flags;
	struct vhci_priv *priv;
	struct vhci_device *vdev;

	FUNC13("vhci_hcd: dequeue a urb %p\n", urb);


	FUNC5(&the_controller->lock, flags);

	priv = urb->hcpriv;
	if (!priv) {
		/* URB was never linked! or will be soon given back by
		 * vhci_rx. */
		FUNC6(&the_controller->lock, flags);
		return 0;
	}

	{
		int ret = 0;
		ret = FUNC7(hcd, urb, status);
		if (ret) {
			FUNC6(&the_controller->lock, flags);
			return ret;
		}
	}

	 /* send unlink request here? */
	vdev = priv->vdev;

	if (!vdev->ud.tcp_socket) {
		/* tcp connection is closed */
		unsigned long flags2;

		FUNC5(&vdev->priv_lock, flags2);

		FUNC13("vhci_hcd: device %p seems to be disconnected\n",
									vdev);
		FUNC4(&priv->list);
		FUNC1(priv);
		urb->hcpriv = NULL;

		FUNC6(&vdev->priv_lock, flags2);

		/*
		 * If tcp connection is alive, we have sent CMD_UNLINK.
		 * vhci_rx will receive RET_UNLINK and give back the URB.
		 * Otherwise, we give back it here.
		 */
		FUNC13("vhci_hcd: vhci_urb_dequeue() gives back urb %p\n",
									urb);

		FUNC9(hcd, urb);

		FUNC6(&the_controller->lock, flags);
		FUNC8(FUNC14(the_controller), urb,
								urb->status);
		FUNC5(&the_controller->lock, flags);

	} else {
		/* tcp connection is alive */
		unsigned long flags2;
		struct vhci_unlink *unlink;

		FUNC5(&vdev->priv_lock, flags2);

		/* setup CMD_UNLINK pdu */
		unlink = FUNC2(sizeof(struct vhci_unlink), GFP_ATOMIC);
		if (!unlink) {
			FUNC12("malloc vhci_unlink\n");
			FUNC6(&vdev->priv_lock, flags2);
			FUNC6(&the_controller->lock, flags);
			FUNC11(&vdev->ud, VDEV_EVENT_ERROR_MALLOC);
			return -ENOMEM;
		}

		unlink->seqnum = FUNC0(&the_controller->seqnum);
		if (unlink->seqnum == 0xffff)
			FUNC13("seqnum max\n");

		unlink->unlink_seqnum = priv->seqnum;

		FUNC13("vhci_hcd: device %p seems to be still connected\n",
									vdev);

		/* send cmd_unlink and try to cancel the pending URB in the
		 * peer */
		FUNC3(&unlink->list, &vdev->unlink_tx);
		FUNC15(&vdev->waitq_tx);

		FUNC6(&vdev->priv_lock, flags2);
	}


	if (!vdev->ud.tcp_socket) {
		/* tcp connection is closed */
		FUNC13("vhci_hcd: vhci_urb_dequeue() gives back urb %p\n",
									urb);

		FUNC9(hcd, urb);

		FUNC6(&the_controller->lock, flags);
		FUNC8(FUNC14(the_controller), urb,
								urb->status);
		FUNC5(&the_controller->lock, flags);
	}

	FUNC6(&the_controller->lock, flags);

	FUNC10("leave\n");
	return 0;
}