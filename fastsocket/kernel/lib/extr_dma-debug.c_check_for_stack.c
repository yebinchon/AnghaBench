
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int err_printk (struct device*,int *,char*,void*) ;
 scalar_t__ object_is_on_stack (void*) ;

__attribute__((used)) static void check_for_stack(struct device *dev, void *addr)
{
 if (object_is_on_stack(addr))
  err_printk(dev, ((void*)0), "DMA-API: device driver maps memory from"
    "stack [addr=%p]\n", addr);
}
