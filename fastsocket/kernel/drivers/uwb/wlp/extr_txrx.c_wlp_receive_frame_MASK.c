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
struct wlp_frame_std_abbrv_hdr {int dummy; } ;
struct wlp_frame_hdr {int type; int /*<<< orphan*/  mux_hdr; } ;
struct wlp_frame_assoc {int dummy; } ;
struct wlp {int dummy; } ;
struct uwb_dev_addr {int /*<<< orphan*/ * data; } ;
struct sk_buff {unsigned int len; void* data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WLP_FRAME_ABBREVIATED 131 
#define  WLP_FRAME_ASSOCIATION 130 
#define  WLP_FRAME_CONTROL 129 
#define  WLP_FRAME_STANDARD 128 
 scalar_t__ WLP_PROTOCOL_ID ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct wlp*,struct sk_buff*,struct uwb_dev_addr*) ; 
 int FUNC5 (struct wlp*,struct sk_buff*,struct uwb_dev_addr*) ; 

int FUNC6(struct device *dev, struct wlp *wlp, struct sk_buff *skb,
		      struct uwb_dev_addr *src)
{
	unsigned len = skb->len;
	void *ptr = skb->data;
	struct wlp_frame_hdr *hdr;
	int result = 0;

	if (len < sizeof(*hdr)) {
		FUNC0(dev, "Not enough data to parse WLP header.\n");
		result = -EINVAL;
		goto out;
	}
	hdr = ptr;
	if (FUNC2(hdr->mux_hdr) != WLP_PROTOCOL_ID) {
		FUNC0(dev, "Not a WLP frame type.\n");
		result = -EINVAL;
		goto out;
	}
	switch (hdr->type) {
	case WLP_FRAME_STANDARD:
		if (len < sizeof(struct wlp_frame_std_abbrv_hdr)) {
			FUNC0(dev, "Not enough data to parse Standard "
				"WLP header.\n");
			goto out;
		}
		result = FUNC5(wlp, skb, src);
		if (result < 0) {
			if (FUNC3())
				FUNC0(dev, "WLP: Verification of frame "
					"from neighbor %02x:%02x failed.\n",
					src->data[1], src->data[0]);
			goto out;
		}
		result = 1;
		break;
	case WLP_FRAME_ABBREVIATED:
		FUNC0(dev, "Abbreviated frame received. FIXME?\n");
		FUNC1(skb);
		break;
	case WLP_FRAME_CONTROL:
		FUNC0(dev, "Control frame received. FIXME?\n");
		FUNC1(skb);
		break;
	case WLP_FRAME_ASSOCIATION:
		if (len < sizeof(struct wlp_frame_assoc)) {
			FUNC0(dev, "Not enough data to parse Association "
				"WLP header.\n");
			goto out;
		}
		FUNC4(wlp, skb, src);
		break;
	default:
		FUNC0(dev, "Invalid frame received.\n");
		result = -EINVAL;
		break;
	}
out:
	if (result < 0) {
		FUNC1(skb);
		result = 0;
	}
	return result;
}