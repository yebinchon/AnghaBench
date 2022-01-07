
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int scan_timestamp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

ssize_t iio_scan_el_ts_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n", indio_dev->scan_timestamp);
}
