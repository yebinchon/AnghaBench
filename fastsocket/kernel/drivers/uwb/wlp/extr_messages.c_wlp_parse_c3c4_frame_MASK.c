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
typedef  int /*<<< orphan*/  u8 ;
struct wlp_uuid {int dummy; } ;
struct wlp_frame_assoc {int /*<<< orphan*/  type; } ;
struct wlp {TYPE_2__* rc; } ;
struct uwb_mac_addr {int dummy; } ;
struct sk_buff {size_t len; void* data; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wlp*,void*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (struct wlp*,void*,struct uwb_mac_addr*,size_t) ; 
 int FUNC4 (struct wlp*,void*,struct wlp_uuid*,size_t) ; 

int FUNC5(struct wlp *wlp, struct sk_buff *skb,
		       struct wlp_uuid *wssid, u8 *tag,
		       struct uwb_mac_addr *virt_addr)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	int result;
	void *ptr = skb->data;
	size_t len = skb->len;
	size_t used;
	struct wlp_frame_assoc *assoc = ptr;

	used = sizeof(*assoc);
	result = FUNC4(wlp, ptr + used, wssid, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WSSID attribute from "
			"%s message.\n", FUNC1(assoc->type));
		goto error_parse;
	}
	used += result;
	result = FUNC2(wlp, ptr + used, tag, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WSS tag attribute from "
			"%s message.\n", FUNC1(assoc->type));
		goto error_parse;
	}
	used += result;
	result = FUNC3(wlp, ptr + used, virt_addr, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WSS virtual address "
			"attribute from %s message.\n",
			FUNC1(assoc->type));
		goto error_parse;
	}
error_parse:
	return result;
}