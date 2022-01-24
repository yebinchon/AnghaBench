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
struct wlp_wss_tmp_info {int dummy; } ;
struct wlp_uuid {int dummy; } ;
struct wlp_attr_wss_info {int dummy; } ;
struct wlp_attr_hdr {int dummy; } ;
struct wlp {TYPE_2__* rc; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 size_t FUNC1 (struct wlp*,struct wlp_attr_hdr*,size_t) ; 
 size_t FUNC2 (struct wlp*,void*,struct wlp_wss_tmp_info*,size_t) ; 
 size_t FUNC3 (struct wlp*,void*,struct wlp_uuid*,size_t) ; 

__attribute__((used)) static ssize_t FUNC4(struct wlp *wlp, struct wlp_attr_wss_info *attr,
				size_t buflen, struct wlp_uuid *wssid,
				struct wlp_wss_tmp_info *wss_info)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	ssize_t result;
	size_t len;
	size_t used = 0;
	void *ptr;

	result = FUNC1(wlp, (struct wlp_attr_hdr *)attr,
					     buflen);
	if (result < 0)
		goto out;
	len = result;
	used = sizeof(*attr);
	ptr = attr;

	result = FUNC3(wlp, ptr + used, wssid, buflen - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WSSID from WSS info.\n");
		goto out;
	}
	used += result;
	result = FUNC2(wlp, ptr + used, wss_info,
					buflen - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WSS information "
			"from WSS information attributes. \n");
		goto out;
	}
	used += result;
	if (len + sizeof(*attr) != used) {
		FUNC0(dev, "WLP: Amount of data parsed does not "
			"match length field. Parsed %zu, length "
			"field %zu. \n", used, len);
		result = -EINVAL;
		goto out;
	}
	result = used;
out:
	return result;
}