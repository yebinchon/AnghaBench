
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int __end_rodata ;
 int __start_rodata ;
 int _etext ;
 int _text ;
 int err_printk (struct device*,int *,char*,void*,unsigned long) ;
 scalar_t__ overlap (void*,unsigned long,int ,int ) ;

__attribute__((used)) static void check_for_illegal_area(struct device *dev, void *addr, unsigned long len)
{
 if (overlap(addr, len, _text, _etext) ||
     overlap(addr, len, __start_rodata, __end_rodata))
  err_printk(dev, ((void*)0), "DMA-API: device driver maps memory from kernel text or rodata [addr=%p] [len=%lu]\n", addr, len);
}
