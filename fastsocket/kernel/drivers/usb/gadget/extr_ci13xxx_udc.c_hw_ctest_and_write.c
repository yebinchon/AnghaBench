
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cap; } ;


 int ffs_nr (int) ;
 TYPE_1__ hw_bank ;
 int hw_cread (int,int ) ;
 int iowrite32 (int,int) ;

__attribute__((used)) static u32 hw_ctest_and_write(u32 addr, u32 mask, u32 data)
{
 u32 reg = hw_cread(addr, ~0);

 iowrite32((reg & ~mask) | (data & mask), addr + hw_bank.cap);
 return (reg & mask) >> ffs_nr(mask);
}
