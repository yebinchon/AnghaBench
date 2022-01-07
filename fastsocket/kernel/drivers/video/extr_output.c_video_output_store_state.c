
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct output_device {int request_state; TYPE_1__* props; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* set_state ) (struct output_device*) ;} ;


 size_t EINVAL ;
 scalar_t__ isspace (char) ;
 int simple_strtoul (char const*,char**,int ) ;
 int stub1 (struct output_device*) ;
 struct output_device* to_output_device (struct device*) ;

__attribute__((used)) static ssize_t video_output_store_state(struct device *dev,
     struct device_attribute *attr,
     const char *buf,size_t count)
{
 char *endp;
 struct output_device *od = to_output_device(dev);
 int request_state = simple_strtoul(buf,&endp,0);
 size_t size = endp - buf;

 if (isspace(*endp))
  size++;
 if (size != count)
  return -EINVAL;

 if (od->props) {
  od->request_state = request_state;
  od->props->set_state(od);
 }
 return count;
}
