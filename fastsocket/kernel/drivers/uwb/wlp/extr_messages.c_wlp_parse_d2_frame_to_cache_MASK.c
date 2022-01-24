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
typedef  int /*<<< orphan*/  uuid_e ;
struct wlp_uuid {int dummy; } ;
struct wlp_neighbor_e {struct wlp_device_info* info; int /*<<< orphan*/  uuid; } ;
struct wlp_frame_assoc {int dummy; } ;
struct wlp_device_info {int /*<<< orphan*/  name; } ;
struct wlp {int /*<<< orphan*/  uuid; TYPE_2__* rc; } ;
struct sk_buff {size_t len; void* data; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  enum wlp_assc_error { ____Placeholder_wlp_assc_error } wlp_assc_error ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WLP_ASSOC_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct wlp_device_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wlp_uuid*,int /*<<< orphan*/ *,int) ; 
 size_t FUNC3 (struct wlp*,void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (struct wlp*,void*,struct wlp_uuid*,size_t) ; 
 size_t FUNC5 (struct wlp*,void*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC6 (struct wlp*,void*,struct wlp_device_info*,size_t) ; 
 size_t FUNC7 (struct wlp*,void*,int*,size_t) ; 
 size_t FUNC8 (struct wlp*,void*,struct wlp_neighbor_e*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct wlp_neighbor_e*) ; 

int FUNC10(struct wlp *wlp, struct sk_buff *skb,
				struct wlp_neighbor_e *neighbor)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	struct wlp_frame_assoc *d2 = (void *) skb->data;
	void *ptr = skb->data;
	size_t len = skb->len;
	size_t used;
	ssize_t result;
	struct wlp_uuid uuid_e;
	struct wlp_device_info *nb_info;
	enum wlp_assc_error assc_err;

	used = sizeof(*d2);
	result = FUNC4(wlp, ptr + used, &uuid_e, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain UUID-E attribute from D2 "
			"message.\n");
		goto error_parse;
	}
	if (FUNC2(&uuid_e, &wlp->uuid, sizeof(uuid_e))) {
		FUNC0(dev, "WLP: UUID-E in incoming D2 does not match "
			"local UUID sent in D1. \n");
		goto error_parse;
	}
	used += result;
	result = FUNC5(wlp, ptr + used, &neighbor->uuid, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain UUID-R attribute from D2 "
			"message.\n");
		goto error_parse;
	}
	used += result;
	result = FUNC8(wlp, ptr + used, neighbor,
					   len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WSS information "
			"from D2 message.\n");
		goto error_parse;
	}
	used += result;
	neighbor->info = FUNC1(sizeof(struct wlp_device_info), GFP_KERNEL);
	if (neighbor->info == NULL) {
		FUNC0(dev, "WLP: cannot allocate memory to store device "
			"info.\n");
		result = -ENOMEM;
		goto error_parse;
	}
	nb_info = neighbor->info;
	result = FUNC3(wlp, ptr + used, nb_info->name,
				  len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain Device Name from D2 "
			"message.\n");
		goto error_parse;
	}
	used += result;
	result = FUNC6(wlp, ptr + used, nb_info, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain Device Information from "
			"D2 message.\n");
		goto error_parse;
	}
	used += result;
	result = FUNC7(wlp, ptr + used, &assc_err, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WLP Association Error "
			"Information from D2 message.\n");
		goto error_parse;
	}
	if (assc_err != WLP_ASSOC_ERROR_NONE) {
		FUNC0(dev, "WLP: neighbor device returned association "
			"error %d\n", assc_err);
		result = -EINVAL;
		goto error_parse;
	}
	result = 0;
error_parse:
	if (result < 0)
		FUNC9(neighbor);
	return result;
}