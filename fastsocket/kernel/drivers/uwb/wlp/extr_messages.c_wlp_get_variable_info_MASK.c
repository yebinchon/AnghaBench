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
struct TYPE_6__ {int category; int subID; } ;
struct wlp_device_info {TYPE_3__ prim_dev_type; int /*<<< orphan*/  serial; int /*<<< orphan*/  model_nr; int /*<<< orphan*/  model_name; int /*<<< orphan*/  manufacturer; } ;
struct wlp_attr_hdr {int type; } ;
struct wlp {TYPE_2__* rc; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_5__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WLP_ATTR_MANUF 132 
#define  WLP_ATTR_MODEL_NAME 131 
#define  WLP_ATTR_MODEL_NR 130 
#define  WLP_ATTR_PRI_DEV_TYPE 129 
#define  WLP_ATTR_SERIAL 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int) ; 
 size_t FUNC2 (struct wlp*,void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (struct wlp*,void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (struct wlp*,void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (struct wlp*,void*,TYPE_3__*,size_t) ; 
 size_t FUNC6 (struct wlp*,void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static
int FUNC7(struct wlp *wlp, void *data,
			  struct wlp_device_info *dev_info, ssize_t len)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	size_t used = 0;
	struct wlp_attr_hdr *hdr;
	ssize_t result = 0;
	unsigned last = 0;

	while (len - used > 0) {
		if (len - used < sizeof(*hdr)) {
			FUNC0(dev, "WLP: Partial data in frame, cannot "
				"parse. \n");
			goto error_parse;
		}
		hdr = data + used;
		switch (FUNC1(hdr->type)) {
		case WLP_ATTR_MANUF:
			if (last >= WLP_ATTR_MANUF) {
				FUNC0(dev, "WLP: Incorrect order of "
					"attribute values in D1 msg.\n");
				goto error_parse;
			}
			result = FUNC2(wlp, data + used,
						      dev_info->manufacturer,
						      len - used);
			if (result < 0) {
				FUNC0(dev, "WLP: Unable to obtain "
					"Manufacturer attribute from D1 "
					"message.\n");
				goto error_parse;
			}
			last = WLP_ATTR_MANUF;
			used += result;
			break;
		case WLP_ATTR_MODEL_NAME:
			if (last >= WLP_ATTR_MODEL_NAME) {
				FUNC0(dev, "WLP: Incorrect order of "
					"attribute values in D1 msg.\n");
				goto error_parse;
			}
			result = FUNC3(wlp, data + used,
						    dev_info->model_name,
						    len - used);
			if (result < 0) {
				FUNC0(dev, "WLP: Unable to obtain Model "
					"name attribute from D1 message.\n");
				goto error_parse;
			}
			last = WLP_ATTR_MODEL_NAME;
			used += result;
			break;
		case WLP_ATTR_MODEL_NR:
			if (last >= WLP_ATTR_MODEL_NR) {
				FUNC0(dev, "WLP: Incorrect order of "
					"attribute values in D1 msg.\n");
				goto error_parse;
			}
			result = FUNC4(wlp, data + used,
						  dev_info->model_nr,
						  len - used);
			if (result < 0) {
				FUNC0(dev, "WLP: Unable to obtain Model "
					"number attribute from D1 message.\n");
				goto error_parse;
			}
			last = WLP_ATTR_MODEL_NR;
			used += result;
			break;
		case WLP_ATTR_SERIAL:
			if (last >= WLP_ATTR_SERIAL) {
				FUNC0(dev, "WLP: Incorrect order of "
					"attribute values in D1 msg.\n");
				goto error_parse;
			}
			result = FUNC6(wlp, data + used,
						dev_info->serial, len - used);
			if (result < 0) {
				FUNC0(dev, "WLP: Unable to obtain Serial "
					"number attribute from D1 message.\n");
				goto error_parse;
			}
			last = WLP_ATTR_SERIAL;
			used += result;
			break;
		case WLP_ATTR_PRI_DEV_TYPE:
			if (last >= WLP_ATTR_PRI_DEV_TYPE) {
				FUNC0(dev, "WLP: Incorrect order of "
					"attribute values in D1 msg.\n");
				goto error_parse;
			}
			result = FUNC5(wlp, data + used,
						       &dev_info->prim_dev_type,
						       len - used);
			if (result < 0) {
				FUNC0(dev, "WLP: Unable to obtain Primary "
					"device type attribute from D1 "
					"message.\n");
				goto error_parse;
			}
			dev_info->prim_dev_type.category =
				FUNC1(dev_info->prim_dev_type.category);
			dev_info->prim_dev_type.subID =
				FUNC1(dev_info->prim_dev_type.subID);
			last = WLP_ATTR_PRI_DEV_TYPE;
			used += result;
			break;
		default:
			/* This is not variable device information. */
			goto out;
			break;
		}
	}
out:
	return used;
error_parse:
	return -EINVAL;
}