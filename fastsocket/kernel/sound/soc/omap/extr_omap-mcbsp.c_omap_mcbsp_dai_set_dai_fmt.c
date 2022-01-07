
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int private_data; } ;
struct omap_mcbsp_reg_cfg {int spcr2; int xccr; int rccr; int pcr0; int srgr2; int xcr2; int rcr2; int spcr1; } ;
struct omap_mcbsp_data {unsigned int fmt; scalar_t__ configured; struct omap_mcbsp_reg_cfg regs; } ;


 int CLKRM ;
 int CLKRP ;
 int CLKXM ;
 int CLKXP ;
 int DXENDLY (int) ;
 int EINVAL ;
 int FREE ;
 int FSGM ;
 int FSRM ;
 int FSRP ;
 int FSXM ;
 int FSXP ;
 int RDATDLY (int) ;
 int RDISABLE ;
 int RDMAEN ;
 int RFIG ;
 int RFULL_CYCLE ;
 int RINTM (int) ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int XDATDLY (int) ;
 int XDISABLE ;
 int XDMAEN ;
 int XFIG ;
 int XINTM (int) ;
 scalar_t__ cpu_is_omap2430 () ;
 scalar_t__ cpu_is_omap34xx () ;
 int memset (struct omap_mcbsp_reg_cfg*,int ,int) ;
 struct omap_mcbsp_data* to_mcbsp (int ) ;

__attribute__((used)) static int omap_mcbsp_dai_set_dai_fmt(struct snd_soc_dai *cpu_dai,
          unsigned int fmt)
{
 struct omap_mcbsp_data *mcbsp_data = to_mcbsp(cpu_dai->private_data);
 struct omap_mcbsp_reg_cfg *regs = &mcbsp_data->regs;
 unsigned int temp_fmt = fmt;

 if (mcbsp_data->configured)
  return 0;

 mcbsp_data->fmt = fmt;
 memset(regs, 0, sizeof(*regs));

 regs->spcr2 |= XINTM(3) | FREE;
 regs->spcr1 |= RINTM(3);

 if (!cpu_is_omap34xx()) {
  regs->rcr2 |= RFIG;
  regs->xcr2 |= XFIG;
 }
 if (cpu_is_omap2430() || cpu_is_omap34xx()) {
  regs->xccr = DXENDLY(1) | XDMAEN | XDISABLE;
  regs->rccr = RFULL_CYCLE | RDMAEN | RDISABLE;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 132:

  regs->rcr2 |= RDATDLY(1);
  regs->xcr2 |= XDATDLY(1);
  break;
 case 134:

  regs->rcr2 |= RDATDLY(1);
  regs->xcr2 |= XDATDLY(1);

  temp_fmt ^= 129;
  break;
 case 133:

  regs->rcr2 |= RDATDLY(0);
  regs->xcr2 |= XDATDLY(0);

  temp_fmt ^= 129;
  break;
 default:

  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 135:

  regs->pcr0 |= FSXM | FSRM |
       CLKXM | CLKRM;

  regs->srgr2 |= FSGM;
  break;
 case 136:

  break;
 default:

  return -EINVAL;
 }


 switch (temp_fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:





  regs->pcr0 |= FSXP | FSRP |
       CLKXP | CLKRP;
  break;
 case 129:
  regs->pcr0 |= CLKXP | CLKRP;
  break;
 case 130:
  regs->pcr0 |= FSXP | FSRP;
  break;
 case 131:
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
