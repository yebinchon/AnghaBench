
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct carmine_fb {scalar_t__ display_reg; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void c_set_disp_reg(const struct carmine_fb *par,
  u32 offset, u32 val)
{
 writel(val, par->display_reg + offset);
}
