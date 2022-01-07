
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep_device {TYPE_1__* desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int wMaxPacketSize; } ;


 int le16_to_cpu (int ) ;
 int sprintf (char*,char*,int) ;
 struct ep_device* to_ep_device (struct device*) ;

__attribute__((used)) static ssize_t show_ep_wMaxPacketSize(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct ep_device *ep = to_ep_device(dev);
 return sprintf(buf, "%04x\n",
   le16_to_cpu(ep->desc->wMaxPacketSize) & 0x07ff);
}
