
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmagbbfb_par {scalar_t__ sfb; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void sfb_write(struct pmagbbfb_par *par, unsigned int reg, u32 v)
{
 writel(v, par->sfb + reg / 4);
}
