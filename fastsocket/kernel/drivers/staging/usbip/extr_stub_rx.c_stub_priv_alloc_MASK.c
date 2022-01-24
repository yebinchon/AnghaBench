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
struct TYPE_4__ {int /*<<< orphan*/  seqnum; } ;
struct usbip_header {TYPE_2__ base; } ;
struct usbip_device {int dummy; } ;
struct stub_priv {int /*<<< orphan*/  list; struct stub_device* sdev; int /*<<< orphan*/  seqnum; } ;
struct stub_device {int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  priv_init; TYPE_1__* interface; struct usbip_device ud; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SDEV_EVENT_ERROR_MALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct stub_priv* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  stub_priv_cache ; 
 int /*<<< orphan*/  FUNC5 (struct usbip_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct stub_priv *FUNC6(struct stub_device *sdev,
					 struct usbip_header *pdu)
{
	struct stub_priv *priv;
	struct usbip_device *ud = &sdev->ud;
	unsigned long flags;

	FUNC3(&sdev->priv_lock, flags);

	priv = FUNC1(stub_priv_cache, GFP_ATOMIC);
	if (!priv) {
		FUNC0(&sdev->interface->dev, "alloc stub_priv\n");
		FUNC4(&sdev->priv_lock, flags);
		FUNC5(ud, SDEV_EVENT_ERROR_MALLOC);
		return NULL;
	}

	priv->seqnum = pdu->base.seqnum;
	priv->sdev = sdev;

	/*
	 * After a stub_priv is linked to a list_head,
	 * our error handler can free allocated data.
	 */
	FUNC2(&priv->list, &sdev->priv_init);

	FUNC4(&sdev->priv_lock, flags);

	return priv;
}