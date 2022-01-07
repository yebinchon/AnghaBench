
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cap; } ;


 TYPE_1__ hw_bank ;
 int ioread32 (int) ;

__attribute__((used)) static u32 hw_cread(u32 addr, u32 mask)
{
 return ioread32(addr + hw_bank.cap) & mask;
}
