
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ vbase; } ;
struct savagefb_par {TYPE_1__ mmio; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 savage_in32(u32 addr, struct savagefb_par *par)
{
 return readl(par->mmio.vbase + addr);
}
