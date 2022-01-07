
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ vbase; } ;
struct savagefb_par {TYPE_1__ mmio; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void savage_out32(u32 addr, u32 val, struct savagefb_par *par)
{
 writel(val, par->mmio.vbase + addr);
}
