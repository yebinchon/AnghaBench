
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lxfb_par {scalar_t__ gp_regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline uint32_t read_gp(struct lxfb_par *par, int reg)
{
 return readl(par->gp_regs + 4*reg);
}
