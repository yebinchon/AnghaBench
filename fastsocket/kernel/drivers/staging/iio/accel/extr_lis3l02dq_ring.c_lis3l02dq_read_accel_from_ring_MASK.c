#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct iio_scan_el {scalar_t__ label; int /*<<< orphan*/  number; } ;
struct iio_dev_attr {scalar_t__ address; } ;
struct iio_dev {TYPE_3__* ring; TYPE_1__* scan_el_attrs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int s16 ;
struct TYPE_6__ {int (* read_last ) (TYPE_3__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* get_bpd ) (TYPE_3__*) ;} ;
struct TYPE_7__ {TYPE_2__ access; } ;
struct TYPE_5__ {scalar_t__* attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 struct iio_dev_attr* FUNC8 (struct device_attribute*) ; 
 struct iio_scan_el* FUNC9 (struct device_attribute*) ; 

ssize_t FUNC10(struct device *dev,
				       struct device_attribute *attr,
				       char *buf)
{
	struct iio_scan_el *el = NULL;
	int ret, len = 0, i = 0;
	struct iio_dev_attr *this_attr = FUNC8(attr);
	struct iio_dev *dev_info = FUNC0(dev);
	s16 *data;

	while (dev_info->scan_el_attrs->attrs[i]) {
		el = FUNC9((struct device_attribute *)
				    (dev_info->scan_el_attrs->attrs[i]));
		/* label is in fact the address */
		if (el->label == this_attr->address)
			break;
		i++;
	}
	if (!dev_info->scan_el_attrs->attrs[i]) {
		ret = -EINVAL;
		goto error_ret;
	}
	/* If this element is in the scan mask */
	ret = FUNC2(dev_info, el->number);
	if (ret < 0)
		goto error_ret;
	if (ret) {
		data = FUNC4(dev_info->ring->access.get_bpd(dev_info->ring),
			       GFP_KERNEL);
		if (data == NULL)
			return -ENOMEM;
		ret = dev_info->ring->access.read_last(dev_info->ring,
						      (u8 *)data);
		if (ret)
			goto error_free_data;
	} else {
		ret = -EINVAL;
		goto error_ret;
	}
	len = FUNC1(dev_info, el->number);
	if (len < 0) {
		ret = len;
		goto error_free_data;
	}
	len = FUNC5(buf, "ring %d\n", data[len]);
error_free_data:
	FUNC3(data);
error_ret:
	return ret ? ret : len;

}