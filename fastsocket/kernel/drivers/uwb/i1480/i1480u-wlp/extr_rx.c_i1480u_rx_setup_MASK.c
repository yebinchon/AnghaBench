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
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  ip_summed; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct i1480u_rx_buf {int /*<<< orphan*/ * urb; struct sk_buff* data; struct i1480u* i1480u; } ;
struct i1480u {int /*<<< orphan*/  usb_dev; struct i1480u_rx_buf* rx_buf; TYPE_3__* usb_iface; int /*<<< orphan*/ * rx_skb; struct net_device* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; struct device dev; } ;
struct TYPE_5__ {TYPE_1__* endpoint; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 scalar_t__ i1480u_MAX_RX_PKT_SIZE ; 
 int i1480u_RX_BUFS ; 
 int /*<<< orphan*/  i1480u_rx_cb ; 
 int /*<<< orphan*/  FUNC2 (struct i1480u*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct i1480u_rx_buf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct i1480u *i1480u)
{
	int result, cnt;
	struct device *dev = &i1480u->usb_iface->dev;
	struct net_device *net_dev = i1480u->net_dev;
	struct usb_endpoint_descriptor *epd;
	struct sk_buff *skb;

	/* Alloc RX stuff */
	i1480u->rx_skb = NULL;	/* not in process of receiving packet */
	result = -ENOMEM;
	epd = &i1480u->usb_iface->cur_altsetting->endpoint[1].desc;
	for (cnt = 0; cnt < i1480u_RX_BUFS; cnt++) {
		struct i1480u_rx_buf *rx_buf = &i1480u->rx_buf[cnt];
		rx_buf->i1480u = i1480u;
		skb = FUNC0(i1480u_MAX_RX_PKT_SIZE);
		if (!skb) {
			FUNC1(dev,
				"RX: cannot allocate RX buffer %d\n", cnt);
			result = -ENOMEM;
			goto error;
		}
		skb->dev = net_dev;
		skb->ip_summed = CHECKSUM_NONE;
		FUNC3(skb, 2);
		rx_buf->data = skb;
		rx_buf->urb = FUNC5(0, GFP_KERNEL);
		if (FUNC4(rx_buf->urb == NULL)) {
			FUNC1(dev, "RX: cannot allocate URB %d\n", cnt);
			result = -ENOMEM;
			goto error;
		}
		FUNC6(rx_buf->urb, i1480u->usb_dev,
			  FUNC7(i1480u->usb_dev, epd->bEndpointAddress),
			  rx_buf->data->data, i1480u_MAX_RX_PKT_SIZE - 2,
			  i1480u_rx_cb, rx_buf);
		result = FUNC8(rx_buf->urb, GFP_NOIO);
		if (FUNC4(result < 0)) {
			FUNC1(dev, "RX: cannot submit URB %d: %d\n",
				cnt, result);
			goto error;
		}
	}
	return 0;

error:
	FUNC2(i1480u);
	return result;
}