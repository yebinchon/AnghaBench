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
struct uwb_dev_addr {int dummy; } ;
struct wlp_eda_node {struct uwb_dev_addr dev_addr; } ;
struct wlp {int (* xmit_frame ) (struct wlp*,struct sk_buff*,struct uwb_dev_addr*) ;TYPE_2__* rc; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 () ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wlp*,struct sk_buff*,struct uwb_dev_addr*) ; 
 int FUNC6 (struct wlp*,struct wlp_eda_node*,struct sk_buff*) ; 

int FUNC7(struct wlp *wlp, struct wlp_eda_node *eda_entry,
		      void *_skb)
{
	int result = -ENOMEM;
	struct device *dev = &wlp->rc->uwb_dev.dev;
	struct sk_buff *skb = _skb;
	struct sk_buff *copy;
	struct uwb_dev_addr *dev_addr = &eda_entry->dev_addr;

	copy = FUNC4(skb, GFP_ATOMIC);
	if (copy == NULL) {
		if (FUNC3())
			FUNC1(dev, "WLP: Unable to copy skb for "
				"transmission.\n");
		goto out;
	}
	result = FUNC6(wlp, eda_entry, copy);
	if (result < 0) {
		if (FUNC3())
			FUNC1(dev, "WLP: Unable to connect/send skb "
				"to neighbor.\n");
		FUNC2(copy);
		goto out;
	} else if (result == 1)
		/* Frame will be transmitted separately */
		goto out;
	FUNC0(wlp->xmit_frame == NULL);
	result = wlp->xmit_frame(wlp, copy, dev_addr);
	if (result < 0) {
		if (FUNC3())
			FUNC1(dev, "WLP: Unable to transmit frame: %d\n",
				result);
		if ((result == -ENXIO) && FUNC3())
			FUNC1(dev, "WLP: Is network interface up? \n");
		/* We could try again ... */
		FUNC2(copy);/*we need to free if tx fails */
	}
out:
	return result;
}