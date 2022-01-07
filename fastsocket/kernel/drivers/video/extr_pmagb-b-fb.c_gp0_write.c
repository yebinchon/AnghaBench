
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmagbbfb_par {scalar_t__ mmio; } ;


 scalar_t__ PMAGB_B_GP0 ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void gp0_write(struct pmagbbfb_par *par, u32 v)
{
 writel(v, par->mmio + PMAGB_B_GP0);
}
