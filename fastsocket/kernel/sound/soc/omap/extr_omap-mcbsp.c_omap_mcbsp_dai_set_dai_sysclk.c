
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int private_data; } ;
struct omap_mcbsp_reg_cfg {int pcr0; int srgr2; } ;
struct omap_mcbsp_data {struct omap_mcbsp_reg_cfg regs; } ;


 int CLKSM ;
 int ENODEV ;
 int SCLKME ;
 int omap_mcbsp_dai_set_clks_src (struct omap_mcbsp_data*,int) ;
 int omap_mcbsp_dai_set_rcvr_src (struct omap_mcbsp_data*,int) ;
 struct omap_mcbsp_data* to_mcbsp (int ) ;

__attribute__((used)) static int omap_mcbsp_dai_set_dai_sysclk(struct snd_soc_dai *cpu_dai,
      int clk_id, unsigned int freq,
      int dir)
{
 struct omap_mcbsp_data *mcbsp_data = to_mcbsp(cpu_dai->private_data);
 struct omap_mcbsp_reg_cfg *regs = &mcbsp_data->regs;
 int err = 0;

 switch (clk_id) {
 case 132:
  regs->srgr2 |= CLKSM;
  break;
 case 129:
 case 130:
  err = omap_mcbsp_dai_set_clks_src(mcbsp_data, clk_id);
  break;

 case 128:
  regs->srgr2 |= CLKSM;
 case 131:
  regs->pcr0 |= SCLKME;
  break;

 case 136:
 case 135:
 case 134:
 case 133:
  err = omap_mcbsp_dai_set_rcvr_src(mcbsp_data, clk_id);
  break;
 default:
  err = -ENODEV;
 }

 return err;
}
