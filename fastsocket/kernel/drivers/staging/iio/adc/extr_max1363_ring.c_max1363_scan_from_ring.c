
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct max1363_state {TYPE_2__* current_mode; } ;
struct iio_dev {TYPE_3__* ring; struct max1363_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* read_last ) (TYPE_3__*,char*) ;} ;
struct TYPE_6__ {TYPE_1__ access; } ;
struct TYPE_5__ {int numvals; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 scalar_t__ sprintf (char*,char*,...) ;
 int stub1 (TYPE_3__*,char*) ;

ssize_t max1363_scan_from_ring(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct iio_dev *dev_info = dev_get_drvdata(dev);
 struct max1363_state *info = dev_info->dev_data;
 int i, ret, len = 0;
 char *ring_data;

 ring_data = kmalloc(info->current_mode->numvals*2, GFP_KERNEL);
 if (ring_data == ((void*)0)) {
  ret = -ENOMEM;
  goto error_ret;
 }
 ret = dev_info->ring->access.read_last(dev_info->ring, ring_data);
 if (ret)
  goto error_free_ring_data;
 len += sprintf(buf+len, "ring ");
 for (i = 0; i < info->current_mode->numvals; i++)
  len += sprintf(buf + len, "%d ",
          ((int)(ring_data[i*2 + 0] & 0x0F) << 8)
          + ((int)(ring_data[i*2 + 1])));
 len += sprintf(buf + len, "\n");
 kfree(ring_data);

 return len;

error_free_ring_data:
 kfree(ring_data);
error_ret:
 return ret;
}
