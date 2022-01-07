
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_audio_dev {scalar_t__ base; } ;


 scalar_t__ DAVINCI_MCASP_GBLCTLX_REG ;
 scalar_t__ DAVINCI_MCASP_TXSTAT_REG ;
 int mcasp_set_reg (scalar_t__,int) ;

__attribute__((used)) static void mcasp_stop_tx(struct davinci_audio_dev *dev)
{
 mcasp_set_reg(dev->base + DAVINCI_MCASP_GBLCTLX_REG, 0);
 mcasp_set_reg(dev->base + DAVINCI_MCASP_TXSTAT_REG, 0xFFFFFFFF);
}
