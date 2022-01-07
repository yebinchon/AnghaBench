
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tdfx_par {scalar_t__ regbase_virt; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tdfx_outl(struct tdfx_par *par, unsigned int reg, u32 val)
{
 writel(val, par->regbase_virt + reg);
}
