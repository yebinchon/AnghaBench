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
struct wlp_tx_hdr {int dummy; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct untd_hdr_cmp {int dummy; } ;
struct sk_buff {size_t const len; int /*<<< orphan*/  data; } ;
struct i1480u_tx {size_t const buf_size; struct i1480u_tx* urb; int /*<<< orphan*/  list_node; int /*<<< orphan*/  buf; } ;
struct i1480u {int /*<<< orphan*/  tx_list_lock; int /*<<< orphan*/  tx_list; int /*<<< orphan*/  usb_dev; TYPE_3__* usb_iface; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_5__ {TYPE_1__* endpoint; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int i1480u_MAX_FRG_SIZE ; 
 int /*<<< orphan*/  i1480u_tx_cb ; 
 int FUNC0 (struct i1480u_tx*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i1480u_tx*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i1480u_tx*) ; 
 struct i1480u_tx* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct i1480u_tx* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i1480u_tx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t const,int /*<<< orphan*/ ,struct i1480u_tx*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct i1480u_tx *FUNC10(struct i1480u *i1480u,
				   struct sk_buff *skb, gfp_t gfp_mask)
{
	int result;
	struct usb_endpoint_descriptor *epd;
	int usb_pipe;
	unsigned long flags;

	struct i1480u_tx *wtx;
	const size_t pl_max_size =
		i1480u_MAX_FRG_SIZE - sizeof(struct untd_hdr_cmp)
		- sizeof(struct wlp_tx_hdr);

	wtx = FUNC3(sizeof(*wtx), gfp_mask);
	if (wtx == NULL)
		goto error_wtx_alloc;
	wtx->urb = FUNC7(0, gfp_mask);
	if (wtx->urb == NULL)
		goto error_urb_alloc;
	epd = &i1480u->usb_iface->cur_altsetting->endpoint[2].desc;
	usb_pipe = FUNC9(i1480u->usb_dev, epd->bEndpointAddress);
	/* Fits in a single complete packet or need to split? */
	if (skb->len > pl_max_size) {
		result = FUNC1(wtx, skb, gfp_mask);
		if (result < 0)
			goto error_create;
		FUNC8(wtx->urb, i1480u->usb_dev, usb_pipe,
				  wtx->buf, wtx->buf_size, i1480u_tx_cb, wtx);
	} else {
		result = FUNC0(wtx, skb, gfp_mask);
		if (result < 0)
			goto error_create;
		FUNC8(wtx->urb, i1480u->usb_dev, usb_pipe,
				  skb->data, skb->len, i1480u_tx_cb, wtx);
	}
	FUNC5(&i1480u->tx_list_lock, flags);
	FUNC4(&wtx->list_node, &i1480u->tx_list);
	FUNC6(&i1480u->tx_list_lock, flags);
	return wtx;

error_create:
	FUNC2(wtx->urb);
error_urb_alloc:
	FUNC2(wtx);
error_wtx_alloc:
	return NULL;
}