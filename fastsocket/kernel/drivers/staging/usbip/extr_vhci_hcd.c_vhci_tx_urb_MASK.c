#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vhci_priv {int seqnum; int /*<<< orphan*/  list; struct urb* urb; struct vhci_device* vdev; } ;
struct vhci_device {int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  waitq_tx; int /*<<< orphan*/  priv_tx; int /*<<< orphan*/  ud; } ;
struct urb {void* hcpriv; TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  seqnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  VDEV_EVENT_ERROR_MALLOC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct vhci_device* FUNC3 (TYPE_2__*) ; 
 struct vhci_priv* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* the_controller ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct urb *urb)
{
	struct vhci_device *vdev = FUNC3(urb->dev);
	struct vhci_priv *priv;
	unsigned long flag;

	if (!vdev) {
		FUNC2("could not get virtual device");
		/* BUG(); */
		return;
	}

	priv = FUNC4(sizeof(struct vhci_priv), GFP_ATOMIC);

	FUNC6(&vdev->priv_lock, flag);

	if (!priv) {
		FUNC1(&urb->dev->dev, "malloc vhci_priv\n");
		FUNC7(&vdev->priv_lock, flag);
		FUNC8(&vdev->ud, VDEV_EVENT_ERROR_MALLOC);
		return;
	}

	priv->seqnum = FUNC0(&the_controller->seqnum);
	if (priv->seqnum == 0xffff)
		FUNC9("seqnum max\n");

	priv->vdev = vdev;
	priv->urb = urb;

	urb->hcpriv = (void *) priv;


	FUNC5(&priv->list, &vdev->priv_tx);

	FUNC10(&vdev->waitq_tx);
	FUNC7(&vdev->priv_lock, flag);
}