
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct iio_scan_el {scalar_t__ label; int number; } ;
struct iio_dev_attr {scalar_t__ address; } ;
struct iio_dev {TYPE_3__* ring; TYPE_1__* scan_el_attrs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s16 ;
struct TYPE_6__ {int (* read_last ) (TYPE_3__*,int *) ;int (* get_bpd ) (TYPE_3__*) ;} ;
struct TYPE_7__ {TYPE_2__ access; } ;
struct TYPE_5__ {scalar_t__* attrs; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_scan_mask_count_to_right (struct iio_dev*,int ) ;
 int iio_scan_mask_query (struct iio_dev*,int ) ;
 int kfree (int*) ;
 int* kmalloc (int ,int ) ;
 int sprintf (char*,char*,int) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*,int *) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;
 struct iio_scan_el* to_iio_scan_el (struct device_attribute*) ;

ssize_t lis3l02dq_read_accel_from_ring(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct iio_scan_el *el = ((void*)0);
 int ret, len = 0, i = 0;
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 struct iio_dev *dev_info = dev_get_drvdata(dev);
 s16 *data;

 while (dev_info->scan_el_attrs->attrs[i]) {
  el = to_iio_scan_el((struct device_attribute *)
        (dev_info->scan_el_attrs->attrs[i]));

  if (el->label == this_attr->address)
   break;
  i++;
 }
 if (!dev_info->scan_el_attrs->attrs[i]) {
  ret = -EINVAL;
  goto error_ret;
 }

 ret = iio_scan_mask_query(dev_info, el->number);
 if (ret < 0)
  goto error_ret;
 if (ret) {
  data = kmalloc(dev_info->ring->access.get_bpd(dev_info->ring),
          GFP_KERNEL);
  if (data == ((void*)0))
   return -ENOMEM;
  ret = dev_info->ring->access.read_last(dev_info->ring,
            (u8 *)data);
  if (ret)
   goto error_free_data;
 } else {
  ret = -EINVAL;
  goto error_ret;
 }
 len = iio_scan_mask_count_to_right(dev_info, el->number);
 if (len < 0) {
  ret = len;
  goto error_free_data;
 }
 len = sprintf(buf, "ring %d\n", data[len]);
error_free_data:
 kfree(data);
error_ret:
 return ret ? ret : len;

}
