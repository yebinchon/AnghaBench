
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ cap; } ;


 TYPE_1__ hw_bank ;
 scalar_t__ hw_cread (scalar_t__,scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 hw_ctest_and_clear(u32 addr, u32 mask)
{
 u32 reg = hw_cread(addr, mask);

 iowrite32(reg, addr + hw_bank.cap);
 return reg;
}
