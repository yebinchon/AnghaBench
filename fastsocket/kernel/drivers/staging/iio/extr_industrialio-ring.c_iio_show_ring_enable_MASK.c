#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iio_ring_buffer {TYPE_1__* indio_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int currentmode; } ;

/* Variables and functions */
 int INDIO_ALL_RING_MODES ; 
 struct iio_ring_buffer* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

ssize_t FUNC2(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	struct iio_ring_buffer *ring = FUNC0(dev);
	return FUNC1(buf, "%d\n", !!(ring->indio_dev->currentmode
				       & INDIO_ALL_RING_MODES));
}