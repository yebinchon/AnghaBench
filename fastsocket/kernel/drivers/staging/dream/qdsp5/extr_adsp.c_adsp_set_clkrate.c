
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {scalar_t__ clk; } ;


 int EINVAL ;
 int clk_set_rate (scalar_t__,unsigned long) ;

int adsp_set_clkrate(struct msm_adsp_module *module, unsigned long clk_rate)
{
 if (module->clk && clk_rate)
  return clk_set_rate(module->clk, clk_rate);

 return -EINVAL;
}
