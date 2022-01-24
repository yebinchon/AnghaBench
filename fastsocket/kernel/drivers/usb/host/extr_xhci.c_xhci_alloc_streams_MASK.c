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
typedef  int /*<<< orphan*/  u32 ;
struct xhci_virt_device {TYPE_1__* eps; int /*<<< orphan*/  out_ctx; } ;
struct xhci_hcd {int /*<<< orphan*/  lock; struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;
struct xhci_command {int /*<<< orphan*/  in_ctx; } ;
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {size_t slot_id; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  ep_state; int /*<<< orphan*/ * stream_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EP_GETTING_STREAMS ; 
 int /*<<< orphan*/  EP_HAS_STREAMS ; 
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct xhci_command* FUNC3 (struct xhci_hcd*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct xhci_hcd*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xhci_hcd*,struct usb_device*,struct usb_host_endpoint**,unsigned int,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,unsigned int*,unsigned int*) ; 
 int FUNC7 (struct xhci_hcd*,struct usb_device*,struct xhci_command*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,struct xhci_virt_device*,struct usb_host_endpoint*) ; 
 int /*<<< orphan*/  FUNC11 (struct xhci_hcd*,struct xhci_command*) ; 
 int /*<<< orphan*/  FUNC12 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ *) ; 
 struct xhci_ep_ctx* FUNC14 (struct xhci_hcd*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct xhci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct xhci_hcd*,struct xhci_ep_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct xhci_hcd*,char*) ; 

int FUNC18(struct usb_hcd *hcd, struct usb_device *udev,
		struct usb_host_endpoint **eps, unsigned int num_eps,
		unsigned int num_streams, gfp_t mem_flags)
{
	int i, ret;
	struct xhci_hcd *xhci;
	struct xhci_virt_device *vdev;
	struct xhci_command *config_cmd;
	unsigned int ep_index;
	unsigned int num_stream_ctxs;
	unsigned long flags;
	u32 changed_ep_bitmask = 0;

	if (!eps)
		return -EINVAL;

	/* Add one to the number of streams requested to account for
	 * stream 0 that is reserved for xHCI usage.
	 */
	num_streams += 1;
	xhci = FUNC0(hcd);
	FUNC8(xhci, "Driver wants %u stream IDs (including stream 0).\n",
			num_streams);

	config_cmd = FUNC3(xhci, true, true, mem_flags);
	if (!config_cmd) {
		FUNC8(xhci, "Could not allocate xHCI command structure.\n");
		return -ENOMEM;
	}

	/* Check to make sure all endpoints are not already configured for
	 * streams.  While we're at it, find the maximum number of streams that
	 * all the endpoints will support and check for duplicate endpoints.
	 */
	FUNC1(&xhci->lock, flags);
	ret = FUNC5(xhci, udev, eps,
			num_eps, &num_streams, &changed_ep_bitmask);
	if (ret < 0) {
		FUNC11(xhci, config_cmd);
		FUNC2(&xhci->lock, flags);
		return ret;
	}
	if (num_streams <= 1) {
		FUNC17(xhci, "WARN: endpoints can't handle "
				"more than one stream.\n");
		FUNC11(xhci, config_cmd);
		FUNC2(&xhci->lock, flags);
		return -EINVAL;
	}
	vdev = xhci->devs[udev->slot_id];
	/* Mark each endpoint as being in transistion, so
	 * xhci_urb_enqueue() will reject all URBs.
	 */
	for (i = 0; i < num_eps; i++) {
		ep_index = FUNC13(&eps[i]->desc);
		vdev->eps[ep_index].ep_state |= EP_GETTING_STREAMS;
	}
	FUNC2(&xhci->lock, flags);

	/* Setup internal data structures and allocate HW data structures for
	 * streams (but don't install the HW structures in the input context
	 * until we're sure all memory allocation succeeded).
	 */
	FUNC6(xhci, &num_streams, &num_stream_ctxs);
	FUNC8(xhci, "Need %u stream ctx entries for %u stream IDs.\n",
			num_stream_ctxs, num_streams);

	for (i = 0; i < num_eps; i++) {
		ep_index = FUNC13(&eps[i]->desc);
		vdev->eps[ep_index].stream_info = FUNC4(xhci,
				num_stream_ctxs,
				num_streams, mem_flags);
		if (!vdev->eps[ep_index].stream_info)
			goto cleanup;
		/* Set maxPstreams in endpoint context and update deq ptr to
		 * point to stream context array. FIXME
		 */
	}

	/* Set up the input context for a configure endpoint command. */
	for (i = 0; i < num_eps; i++) {
		struct xhci_ep_ctx *ep_ctx;

		ep_index = FUNC13(&eps[i]->desc);
		ep_ctx = FUNC14(xhci, config_cmd->in_ctx, ep_index);

		FUNC9(xhci, config_cmd->in_ctx,
				vdev->out_ctx, ep_index);
		FUNC16(xhci, ep_ctx,
				vdev->eps[ep_index].stream_info);
	}
	/* Tell the HW to drop its old copy of the endpoint context info
	 * and add the updated copy from the input context.
	 */
	FUNC15(xhci, config_cmd->in_ctx,
			vdev->out_ctx, changed_ep_bitmask, changed_ep_bitmask);

	/* Issue and wait for the configure endpoint command */
	ret = FUNC7(xhci, udev, config_cmd,
			false, false);

	/* xHC rejected the configure endpoint command for some reason, so we
	 * leave the old ring intact and free our internal streams data
	 * structure.
	 */
	if (ret < 0)
		goto cleanup;

	FUNC1(&xhci->lock, flags);
	for (i = 0; i < num_eps; i++) {
		ep_index = FUNC13(&eps[i]->desc);
		vdev->eps[ep_index].ep_state &= ~EP_GETTING_STREAMS;
		FUNC8(xhci, "Slot %u ep ctx %u now has streams.\n",
			 udev->slot_id, ep_index);
		vdev->eps[ep_index].ep_state |= EP_HAS_STREAMS;
	}
	FUNC11(xhci, config_cmd);
	FUNC2(&xhci->lock, flags);

	/* Subtract 1 for stream 0, which drivers can't use */
	return num_streams - 1;

cleanup:
	/* If it didn't work, free the streams! */
	for (i = 0; i < num_eps; i++) {
		ep_index = FUNC13(&eps[i]->desc);
		FUNC12(xhci, vdev->eps[ep_index].stream_info);
		vdev->eps[ep_index].stream_info = NULL;
		/* FIXME Unset maxPstreams in endpoint context and
		 * update deq ptr to point to normal string ring.
		 */
		vdev->eps[ep_index].ep_state &= ~EP_GETTING_STREAMS;
		vdev->eps[ep_index].ep_state &= ~EP_HAS_STREAMS;
		FUNC10(xhci, vdev, eps[i]);
	}
	FUNC11(xhci, config_cmd);
	return -ENOMEM;
}