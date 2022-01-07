
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct output_device {TYPE_1__* props; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_status ) (struct output_device*) ;} ;


 int sprintf (char*,char*,int) ;
 int stub1 (struct output_device*) ;
 int stub2 (struct output_device*) ;
 struct output_device* to_output_device (struct device*) ;

__attribute__((used)) static ssize_t video_output_show_state(struct device *dev,
           struct device_attribute *attr, char *buf)
{
 ssize_t ret_size = 0;
 struct output_device *od = to_output_device(dev);
 if (od->props)
  ret_size = sprintf(buf,"%.8x\n",od->props->get_status(od));
 return ret_size;
}
