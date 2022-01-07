
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct output_device*) ;
 struct output_device* to_output_device (struct device*) ;

__attribute__((used)) static void video_output_release(struct device *dev)
{
 struct output_device *od = to_output_device(dev);
 kfree(od);
}
