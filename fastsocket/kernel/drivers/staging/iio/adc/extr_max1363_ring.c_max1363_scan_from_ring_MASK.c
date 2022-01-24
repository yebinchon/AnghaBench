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
struct max1363_state {TYPE_2__* current_mode; } ;
struct iio_dev {TYPE_3__* ring; struct max1363_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int (* read_last ) (TYPE_3__*,char*) ;} ;
struct TYPE_6__ {TYPE_1__ access; } ;
struct TYPE_5__ {int numvals; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,...) ; 
 int FUNC4 (TYPE_3__*,char*) ; 

ssize_t FUNC5(struct device *dev,
			       struct device_attribute *attr,
			       char *buf)
{
	struct iio_dev *dev_info = FUNC0(dev);
	struct max1363_state *info = dev_info->dev_data;
	int i, ret, len = 0;
	char *ring_data;

	ring_data = FUNC2(info->current_mode->numvals*2, GFP_KERNEL);
	if (ring_data == NULL) {
		ret = -ENOMEM;
		goto error_ret;
	}
	ret = dev_info->ring->access.read_last(dev_info->ring, ring_data);
	if (ret)
		goto error_free_ring_data;
	len += FUNC3(buf+len, "ring ");
	for (i = 0; i < info->current_mode->numvals; i++)
		len += FUNC3(buf + len, "%d ",
			       ((int)(ring_data[i*2 + 0] & 0x0F) << 8)
			       + ((int)(ring_data[i*2 + 1])));
	len += FUNC3(buf + len, "\n");
	FUNC1(ring_data);

	return len;

error_free_ring_data:
	FUNC1(ring_data);
error_ret:
	return ret;
}