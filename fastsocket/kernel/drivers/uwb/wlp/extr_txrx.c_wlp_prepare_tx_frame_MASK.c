#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wlp {int /*<<< orphan*/  eda; } ;
struct uwb_dev_addr {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct uwb_dev_addr*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  wlp_wss_prep_hdr ; 
 int /*<<< orphan*/  wlp_wss_send_copy ; 

int FUNC7(struct device *dev, struct wlp *wlp,
			 struct sk_buff *skb, struct uwb_dev_addr *dst)
{
	int result = -EINVAL;
	struct ethhdr *eth_hdr = (void *) skb->data;

	if (FUNC2(eth_hdr->h_dest)) {
		result = FUNC5(&wlp->eda, wlp_wss_send_copy, skb);
		if (result < 0) {
			if (FUNC3())
				FUNC0(dev, "Unable to handle broadcast "
					"frame from WLP client.\n");
			goto out;
		}
		FUNC1(skb);
		result = 1;
		/* Frame will be transmitted by WLP. */
	} else {
		result = FUNC6(&wlp->eda, eth_hdr->h_dest, dst,
					     wlp_wss_prep_hdr, skb);
		if (FUNC4(result < 0)) {
			if (FUNC3())
				FUNC0(dev, "Unable to prepare "
					"skb for transmission. \n");
			goto out;
		}
	}
out:
	return result;
}