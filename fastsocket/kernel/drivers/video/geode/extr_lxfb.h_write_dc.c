
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lxfb_par {scalar_t__ dc_regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void write_dc(struct lxfb_par *par, int reg, uint32_t val)
{
 writel(val, par->dc_regs + 4*reg);
}
