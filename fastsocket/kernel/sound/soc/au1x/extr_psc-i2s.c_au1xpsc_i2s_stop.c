
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_data {int dummy; } ;


 int I2SPCR_STOP (int) ;
 unsigned long I2SSTAT_BUSY (int) ;
 int I2S_CFG (struct au1xpsc_audio_data*) ;
 int I2S_PCR (struct au1xpsc_audio_data*) ;
 int I2S_STAT (struct au1xpsc_audio_data*) ;
 int PSC_CTRL (struct au1xpsc_audio_data*) ;
 int PSC_CTRL_SUSPEND ;
 unsigned long PSC_I2SSTAT_RB ;
 unsigned long PSC_I2SSTAT_TB ;
 unsigned long au_readl (int ) ;
 int au_sync () ;
 int au_writel (int ,int ) ;

__attribute__((used)) static int au1xpsc_i2s_stop(struct au1xpsc_audio_data *pscdata, int stype)
{
 unsigned long tmo, stat;

 au_writel(I2SPCR_STOP(stype), I2S_PCR(pscdata));
 au_sync();


 tmo = 1000000;
 while ((au_readl(I2S_STAT(pscdata)) & I2SSTAT_BUSY(stype)) && tmo)
  tmo--;


 stat = au_readl(I2S_STAT(pscdata));
 if (!(stat & (PSC_I2SSTAT_TB | PSC_I2SSTAT_RB))) {
  au_writel(0, I2S_CFG(pscdata));
  au_sync();
  au_writel(PSC_CTRL_SUSPEND, PSC_CTRL(pscdata));
  au_sync();
 }
 return 0;
}
