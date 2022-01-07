
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {struct iio_prtc_trigger_info* private_data; } ;
struct iio_prtc_trigger_info {int frequency; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_trigger* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t iio_trig_periodic_read_freq(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct iio_trigger *trig = dev_get_drvdata(dev);
 struct iio_prtc_trigger_info *trig_info = trig->private_data;
 return sprintf(buf, "%u\n", trig_info->frequency);
}
