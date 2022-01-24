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
struct wlp_wss_tmp_info {int accept_enroll; int sec_status; int /*<<< orphan*/  bcast; int /*<<< orphan*/  name; } ;
struct wlp_attr_hdr {int dummy; } ;
struct wlp {TYPE_2__* rc; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 size_t FUNC1 (struct wlp*,void*,int*,size_t) ; 
 size_t FUNC2 (struct wlp*,void*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (struct wlp*,void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (struct wlp*,void*,int*,size_t) ; 

__attribute__((used)) static ssize_t FUNC5(struct wlp *wlp,
				      struct wlp_attr_hdr *attr,
				      struct wlp_wss_tmp_info *info,
				      ssize_t buflen)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	void *ptr = attr;
	size_t used = 0;
	ssize_t result = -EINVAL;

	result = FUNC3(wlp, ptr, info->name, buflen);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WSS name from "
			"WSS info in D2 message.\n");
		goto error_parse;
	}
	used += result;

	result = FUNC1(wlp, ptr + used, &info->accept_enroll,
				     buflen - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain accepting "
			"enrollment from WSS info in D2 message.\n");
		goto error_parse;
	}
	if (info->accept_enroll != 0 && info->accept_enroll != 1) {
		FUNC0(dev, "WLP: invalid value for accepting "
			"enrollment in D2 message.\n");
		result = -EINVAL;
		goto error_parse;
	}
	used += result;

	result = FUNC4(wlp, ptr + used, &info->sec_status,
					buflen - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain secure "
			"status from WSS info in D2 message.\n");
		goto error_parse;
	}
	if (info->sec_status != 0 && info->sec_status != 1) {
		FUNC0(dev, "WLP: invalid value for secure "
			"status in D2 message.\n");
		result = -EINVAL;
		goto error_parse;
	}
	used += result;

	result = FUNC2(wlp, ptr + used, &info->bcast,
				   buflen - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain broadcast "
			"address from WSS info in D2 message.\n");
		goto error_parse;
	}
	used += result;
	result = used;
error_parse:
	return result;
}