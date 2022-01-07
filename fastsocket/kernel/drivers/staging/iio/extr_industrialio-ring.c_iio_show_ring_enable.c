
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_ring_buffer {TYPE_1__* indio_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int currentmode; } ;


 int INDIO_ALL_RING_MODES ;
 struct iio_ring_buffer* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

ssize_t iio_show_ring_enable(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct iio_ring_buffer *ring = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n", !!(ring->indio_dev->currentmode
           & INDIO_ALL_RING_MODES));
}
