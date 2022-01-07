
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_data {int cfg; } ;


 int ETIMEDOUT ;
 int I2S_CFG (struct au1xpsc_audio_data*) ;
 int I2S_STAT (struct au1xpsc_audio_data*) ;
 int PSC_CTRL (struct au1xpsc_audio_data*) ;
 int PSC_CTRL_ENABLE ;
 int PSC_CTRL_SUSPEND ;
 int PSC_I2SCFG_DE_ENABLE ;
 int PSC_I2SSTAT_DR ;
 int PSC_I2SSTAT_SR ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int,int ) ;

__attribute__((used)) static int au1xpsc_i2s_configure(struct au1xpsc_audio_data *pscdata)
{
 unsigned long tmo;


 au_writel(PSC_CTRL_ENABLE, PSC_CTRL(pscdata));
 au_sync();

 tmo = 1000000;
 while (!(au_readl(I2S_STAT(pscdata)) & PSC_I2SSTAT_SR) && tmo)
  tmo--;

 if (!tmo)
  goto psc_err;

 au_writel(0, I2S_CFG(pscdata));
 au_sync();
 au_writel(pscdata->cfg | PSC_I2SCFG_DE_ENABLE, I2S_CFG(pscdata));
 au_sync();


 tmo = 1000000;
 while (!(au_readl(I2S_STAT(pscdata)) & PSC_I2SSTAT_DR) && tmo)
  tmo--;

 if (tmo)
  return 0;

psc_err:
 au_writel(0, I2S_CFG(pscdata));
 au_writel(PSC_CTRL_SUSPEND, PSC_CTRL(pscdata));
 au_sync();
 return -ETIMEDOUT;
}
