
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_mcbsp_data {scalar_t__ bus_id; } ;


 int EINVAL ;
 int OMAP2_CONTROL_DEVCONF0 ;




 scalar_t__ cpu_class_is_omap1 () ;
 int omap_ctrl_readl (int ) ;
 int omap_ctrl_writel (int,int ) ;

__attribute__((used)) static int omap_mcbsp_dai_set_rcvr_src(struct omap_mcbsp_data *mcbsp_data,
           int clk_id)
{
 int sel_bit, set = 0;
 u16 reg = OMAP2_CONTROL_DEVCONF0;

 if (cpu_class_is_omap1())
  return -EINVAL;
 if (mcbsp_data->bus_id != 0)
  return -EINVAL;

 switch (clk_id) {
 case 130:
  set = 1;
 case 131:
  sel_bit = 3;
  break;
 case 128:
  set = 1;
 case 129:
  sel_bit = 4;
  break;
 default:
  return -EINVAL;
 }

 if (set)
  omap_ctrl_writel(omap_ctrl_readl(reg) | (1 << sel_bit), reg);
 else
  omap_ctrl_writel(omap_ctrl_readl(reg) & ~(1 << sel_bit), reg);

 return 0;
}
