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
struct wlp_uuid {int dummy; } ;
struct wlp_frame_assoc {int dummy; } ;
struct wlp_device_info {int /*<<< orphan*/  name; } ;
struct wlp {TYPE_2__* rc; } ;
struct sk_buff {size_t len; void* data; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  enum wlp_wss_sel_mthd { ____Placeholder_wlp_wss_sel_mthd } wlp_wss_sel_mthd ;
typedef  enum wlp_assc_error { ____Placeholder_wlp_assc_error } wlp_assc_error ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct wlp*,void*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (struct wlp*,void*,struct wlp_uuid*,size_t) ; 
 scalar_t__ FUNC3 (struct wlp*,void*,struct wlp_device_info*,size_t) ; 
 scalar_t__ FUNC4 (struct wlp*,void*,int*,size_t) ; 
 scalar_t__ FUNC5 (struct wlp*,void*,int*,size_t) ; 

__attribute__((used)) static
int FUNC6(struct wlp *wlp, struct sk_buff *skb,
		       struct wlp_uuid *uuid_e,
		       enum wlp_wss_sel_mthd *sel_mthd,
		       struct wlp_device_info *dev_info,
		       enum wlp_assc_error *assc_err)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	struct wlp_frame_assoc *d1 = (void *) skb->data;
	void *ptr = skb->data;
	size_t len = skb->len;
	size_t used;
	ssize_t result;

	used = sizeof(*d1);
	result = FUNC2(wlp, ptr + used, uuid_e, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain UUID-E attribute from D1 "
			"message.\n");
		goto error_parse;
	}
	used += result;
	result = FUNC5(wlp, ptr + used, sel_mthd, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WSS selection method "
			"from D1 message.\n");
		goto error_parse;
	}
	used += result;
	result = FUNC1(wlp, ptr + used, dev_info->name,
				     len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain Device Name from D1 "
			"message.\n");
		goto error_parse;
	}
	used += result;
	result = FUNC3(wlp, ptr + used, dev_info, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain Device Information from "
			"D1 message.\n");
		goto error_parse;
	}
	used += result;
	result = FUNC4(wlp, ptr + used, assc_err, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WLP Association Error "
			"Information from D1 message.\n");
		goto error_parse;
	}
	result = 0;
error_parse:
	return result;
}