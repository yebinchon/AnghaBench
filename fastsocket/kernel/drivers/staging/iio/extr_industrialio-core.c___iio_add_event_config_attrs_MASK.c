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
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct iio_dev {TYPE_3__* event_attrs; TYPE_2__ dev; TYPE_1__* event_conf_attrs; } ;
struct attribute {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {struct attribute** attrs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct attribute*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct attribute*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct iio_dev *dev_info, int i)
{
	int ret;
	/*p for adding, q for removing */
	struct attribute **attrp, **attrq;

	if (dev_info->event_conf_attrs && dev_info->event_conf_attrs[i].attrs) {
		attrp = dev_info->event_conf_attrs[i].attrs;
		while (*attrp) {
			ret =  FUNC0(&dev_info->dev.kobj,
						       *attrp,
						       dev_info
						       ->event_attrs[i].name);
			if (ret)
				goto error_ret;
			attrp++;
		}
	}
	return 0;

error_ret:
	attrq = dev_info->event_conf_attrs[i].attrs;
	while (attrq != attrp) {
			FUNC1(&dev_info->dev.kobj,
					     *attrq,
					     dev_info->event_attrs[i].name);
		attrq++;
	}

	return ret;
}