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
struct usb_request {size_t length; int /*<<< orphan*/  list; struct sk_buff* context; int /*<<< orphan*/  complete; int /*<<< orphan*/  buf; } ;
struct usb_ep {int maxpacket; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct ethhdr {int dummy; } ;
struct eth_dev {int /*<<< orphan*/  req_lock; int /*<<< orphan*/  rx_reqs; TYPE_2__* port_usb; TYPE_1__* net; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {scalar_t__ header_len; struct usb_ep* out_ep; } ;
struct TYPE_3__ {scalar_t__ mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eth_dev*,char*,...) ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 scalar_t__ NET_IP_ALIGN ; 
 scalar_t__ RX_EXTRA ; 
 int /*<<< orphan*/  WORK_RX_MEMORY ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eth_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_complete ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct usb_ep*,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct eth_dev *dev, struct usb_request *req, gfp_t gfp_flags)
{
	struct sk_buff	*skb;
	int		retval = -ENOMEM;
	size_t		size = 0;
	struct usb_ep	*out;
	unsigned long	flags;

	FUNC6(&dev->lock, flags);
	if (dev->port_usb)
		out = dev->port_usb->out_ep;
	else
		out = NULL;
	FUNC7(&dev->lock, flags);

	if (!out)
		return -ENOTCONN;


	/* Padding up to RX_EXTRA handles minor disagreements with host.
	 * Normally we use the USB "terminate on short read" convention;
	 * so allow up to (N*maxpacket), since that memory is normally
	 * already allocated.  Some hardware doesn't deal well with short
	 * reads (e.g. DMA must be N*maxpacket), so for now don't trim a
	 * byte off the end (to force hardware errors on overflow).
	 *
	 * RNDIS uses internal framing, and explicitly allows senders to
	 * pad to end-of-packet.  That's potentially nice for speed, but
	 * means receivers can't recover lost synch on their own (because
	 * new packets don't only start after a short RX).
	 */
	size += sizeof(struct ethhdr) + dev->net->mtu + RX_EXTRA;
	size += dev->port_usb->header_len;
	size += out->maxpacket - 1;
	size -= size % out->maxpacket;

	skb = FUNC1(size + NET_IP_ALIGN, gfp_flags);
	if (skb == NULL) {
		FUNC0(dev, "no rx skb\n");
		goto enomem;
	}

	/* Some platforms perform better when IP packets are aligned,
	 * but on at least one, checksumming fails otherwise.  Note:
	 * RNDIS headers involve variable numbers of LE32 values.
	 */
	FUNC5(skb, NET_IP_ALIGN);

	req->buf = skb->data;
	req->length = size;
	req->complete = rx_complete;
	req->context = skb;

	retval = FUNC8(out, req, gfp_flags);
	if (retval == -ENOMEM)
enomem:
		FUNC2(dev, WORK_RX_MEMORY);
	if (retval) {
		FUNC0(dev, "rx submit --> %d\n", retval);
		if (skb)
			FUNC3(skb);
		FUNC6(&dev->req_lock, flags);
		FUNC4(&req->list, &dev->rx_reqs);
		FUNC7(&dev->req_lock, flags);
	}
	return retval;
}