#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct iio_event_attr {int mask; TYPE_2__* listel; } ;
struct iio_dev {int /*<<< orphan*/  mlock; TYPE_1__** interrupts; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_5__ {scalar_t__ refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  ev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIS3L02DQ_REG_CTRL_2_ADDR ; 
 int LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT ; 
 int /*<<< orphan*/  LIS3L02DQ_REG_WAKE_UP_CFG_ADDR ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct iio_event_attr* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
						struct device_attribute *attr,
						const char *buf,
						size_t len)
{
	struct iio_event_attr *this_attr = FUNC7(attr);
	struct iio_dev *indio_dev = FUNC0(dev);
	int ret, currentlyset, changed = 0;
	u8 valold, controlold;
	bool val;

	val = !(buf[0] == '0');

	FUNC5(&indio_dev->mlock);
	/* read current value */
	ret = FUNC3(dev,
				       LIS3L02DQ_REG_WAKE_UP_CFG_ADDR,
				       &valold);
	if (ret)
		goto error_mutex_unlock;

	/* read current control */
	ret = FUNC3(dev,
				       LIS3L02DQ_REG_CTRL_2_ADDR,
				       &controlold);
	if (ret)
		goto error_mutex_unlock;
	currentlyset = !!(valold & this_attr->mask);
	if (val == false && currentlyset) {
		valold &= ~this_attr->mask;
		changed = 1;
		FUNC2(this_attr->listel,
						 &indio_dev->interrupts[0]
						 ->ev_list);
	} else if (val == true && !currentlyset) {
		changed = 1;
		valold |= this_attr->mask;
		FUNC1(this_attr->listel,
					    &indio_dev->interrupts[0]->ev_list);
	}

	if (changed) {
		ret = FUNC4(dev,
						LIS3L02DQ_REG_WAKE_UP_CFG_ADDR,
						&valold);
		if (ret)
			goto error_mutex_unlock;
		/* This always enables the interrupt, even if we've remove the
		 * last thing using it. For this device we can use the reference
		 * count on the handler to tell us if anyone wants the interrupt
		 */
		controlold = this_attr->listel->refcount ?
			(controlold | LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT) :
			(controlold & ~LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT);
		ret = FUNC4(dev,
						LIS3L02DQ_REG_CTRL_2_ADDR,
						&controlold);
		if (ret)
			goto error_mutex_unlock;
	}
error_mutex_unlock:
	FUNC6(&indio_dev->mlock);

	return ret ? ret : len;
}