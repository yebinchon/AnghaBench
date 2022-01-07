
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cap; } ;


 TYPE_1__ hw_bank ;
 int hw_cread (int,int) ;
 int iowrite32 (int,int) ;

__attribute__((used)) static void hw_cwrite(u32 addr, u32 mask, u32 data)
{
 iowrite32(hw_cread(addr, ~mask) | (data & mask),
    addr + hw_bank.cap);
}
