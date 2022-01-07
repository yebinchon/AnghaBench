
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int err (char*) ;
 int trace (char*,struct device*) ;

__attribute__((used)) static void udc_release(struct device *dev)
{
 trace("%p", dev);

 if (dev == ((void*)0))
  err("EINVAL");
}
