#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  type; int /*<<< orphan*/  mux_hdr; } ;
struct wlp_frame_std_abbrv_hdr {int /*<<< orphan*/  tag; TYPE_3__ hdr; } ;
struct uwb_dev_addr {int /*<<< orphan*/ * data; } ;
struct wlp_eda_node {unsigned char* eth_addr; scalar_t__ state; TYPE_4__* wss; struct uwb_dev_addr dev_addr; } ;
struct wlp {TYPE_2__* rc; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  tag; } ;
struct TYPE_5__ {struct device dev; } ;
struct TYPE_6__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  WLP_FRAME_STANDARD ; 
 int /*<<< orphan*/  WLP_PROTOCOL_ID ; 
 scalar_t__ WLP_WSS_CONNECTED ; 
 scalar_t__ FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (struct sk_buff*) ; 

int FUNC6(struct wlp *wlp, struct wlp_eda_node *eda_entry,
		     void *_skb)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	int result = 0;
	unsigned char *eth_addr = eda_entry->eth_addr;
	struct uwb_dev_addr *dev_addr = &eda_entry->dev_addr;
	struct sk_buff *skb = _skb;
	struct wlp_frame_std_abbrv_hdr *std_hdr;

	if (eda_entry->state == WLP_WSS_CONNECTED) {
		/* Add WLP header */
		FUNC0(FUNC5(skb) < sizeof(*std_hdr));
		std_hdr = (void *) FUNC1(skb, sizeof(*std_hdr));
		std_hdr->hdr.mux_hdr = FUNC2(WLP_PROTOCOL_ID);
		std_hdr->hdr.type = WLP_FRAME_STANDARD;
		std_hdr->tag = eda_entry->wss->tag;
	} else {
		if (FUNC4())
			FUNC3(dev, "WLP: Destination neighbor (Ethernet: "
				"%02x:%02x:%02x:%02x:%02x:%02x, Dev: "
				"%02x:%02x) is not connected. \n", eth_addr[0],
				eth_addr[1], eth_addr[2], eth_addr[3],
				eth_addr[4], eth_addr[5], dev_addr->data[1],
				dev_addr->data[0]);
		result = -EINVAL;
	}
	return result;
}