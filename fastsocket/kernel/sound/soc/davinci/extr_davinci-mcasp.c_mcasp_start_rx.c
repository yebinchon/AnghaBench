
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_audio_dev {scalar_t__ base; } ;


 scalar_t__ DAVINCI_MCASP_GBLCTLR_REG ;
 scalar_t__ DAVINCI_MCASP_RXBUF_REG ;
 int RXCLKRST ;
 int RXFSRST ;
 int RXHCLKRST ;
 int RXSERCLR ;
 int RXSMRST ;
 int mcasp_set_ctl_reg (scalar_t__,int ) ;
 int mcasp_set_reg (scalar_t__,int ) ;

__attribute__((used)) static void mcasp_start_rx(struct davinci_audio_dev *dev)
{
 mcasp_set_ctl_reg(dev->base + DAVINCI_MCASP_GBLCTLR_REG, RXHCLKRST);
 mcasp_set_ctl_reg(dev->base + DAVINCI_MCASP_GBLCTLR_REG, RXCLKRST);
 mcasp_set_ctl_reg(dev->base + DAVINCI_MCASP_GBLCTLR_REG, RXSERCLR);
 mcasp_set_reg(dev->base + DAVINCI_MCASP_RXBUF_REG, 0);

 mcasp_set_ctl_reg(dev->base + DAVINCI_MCASP_GBLCTLR_REG, RXSMRST);
 mcasp_set_ctl_reg(dev->base + DAVINCI_MCASP_GBLCTLR_REG, RXFSRST);
 mcasp_set_reg(dev->base + DAVINCI_MCASP_RXBUF_REG, 0);

 mcasp_set_ctl_reg(dev->base + DAVINCI_MCASP_GBLCTLR_REG, RXSMRST);
 mcasp_set_ctl_reg(dev->base + DAVINCI_MCASP_GBLCTLR_REG, RXFSRST);
}
