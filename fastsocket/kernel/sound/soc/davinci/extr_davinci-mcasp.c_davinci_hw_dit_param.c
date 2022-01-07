
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_audio_dev {scalar_t__ base; } ;


 int ACLKXE ;
 int AFSX ;
 int AFSXE ;
 int AHCLKXDIV (int) ;
 scalar_t__ DAVINCI_MCASP_ACLKXCTL_REG ;
 scalar_t__ DAVINCI_MCASP_AHCLKXCTL_REG ;
 scalar_t__ DAVINCI_MCASP_PDIR_REG ;
 scalar_t__ DAVINCI_MCASP_TXDITCTL_REG ;
 scalar_t__ DAVINCI_MCASP_TXFMCTL_REG ;
 scalar_t__ DAVINCI_MCASP_TXFMT_REG ;
 scalar_t__ DAVINCI_MCASP_TXMASK_REG ;
 scalar_t__ DAVINCI_MCASP_TXTDM_REG ;
 scalar_t__ DAVINCI_MCASP_XEVTCTL_REG ;
 int DITEN ;
 int FSXMOD (int) ;
 int TXDATADMADIS ;
 int TXROT (int) ;
 int TXSSZ (int) ;
 int TX_ASYNC ;
 int mcasp_clr_bits (scalar_t__,int ) ;
 int mcasp_set_bits (scalar_t__,int) ;
 int mcasp_set_reg (scalar_t__,int) ;

__attribute__((used)) static void davinci_hw_dit_param(struct davinci_audio_dev *dev)
{

 mcasp_set_bits(dev->base + DAVINCI_MCASP_PDIR_REG, AFSX);


 mcasp_set_reg(dev->base + DAVINCI_MCASP_TXMASK_REG, 0x00FFFFFF);



 mcasp_set_bits(dev->base + DAVINCI_MCASP_TXFMT_REG,
      TXROT(6) | TXSSZ(15));


 mcasp_set_reg(dev->base + DAVINCI_MCASP_TXFMCTL_REG,
      AFSXE | FSXMOD(0x180));


 mcasp_set_reg(dev->base + DAVINCI_MCASP_TXTDM_REG, 0xFFFFFFFF);


 mcasp_set_bits(dev->base + DAVINCI_MCASP_ACLKXCTL_REG,
      ACLKXE | TX_ASYNC);

 mcasp_clr_bits(dev->base + DAVINCI_MCASP_XEVTCTL_REG, TXDATADMADIS);


 mcasp_set_bits(dev->base + DAVINCI_MCASP_AHCLKXCTL_REG, AHCLKXDIV(3));


 mcasp_set_bits(dev->base + DAVINCI_MCASP_TXDITCTL_REG, DITEN);
}
