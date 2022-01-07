
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_data {int dummy; } ;


 int ETIMEDOUT ;
 int I2SPCR_CLRFIFO (int) ;
 int I2SPCR_START (int) ;
 int I2SPCR_STOP (int) ;
 unsigned long I2SSTAT_BUSY (int) ;
 int I2S_PCR (struct au1xpsc_audio_data*) ;
 int I2S_STAT (struct au1xpsc_audio_data*) ;
 unsigned long PSC_I2SSTAT_RB ;
 unsigned long PSC_I2SSTAT_TB ;
 int au1xpsc_i2s_configure (struct au1xpsc_audio_data*) ;
 unsigned long au_readl (int ) ;
 int au_sync () ;
 int au_writel (int ,int ) ;

__attribute__((used)) static int au1xpsc_i2s_start(struct au1xpsc_audio_data *pscdata, int stype)
{
 unsigned long tmo, stat;
 int ret;

 ret = 0;


 stat = au_readl(I2S_STAT(pscdata));
 if (!(stat & (PSC_I2SSTAT_TB | PSC_I2SSTAT_RB))) {
  ret = au1xpsc_i2s_configure(pscdata);
  if (ret)
   goto out;
 }

 au_writel(I2SPCR_CLRFIFO(stype), I2S_PCR(pscdata));
 au_sync();
 au_writel(I2SPCR_START(stype), I2S_PCR(pscdata));
 au_sync();


 tmo = 1000000;
 while (!(au_readl(I2S_STAT(pscdata)) & I2SSTAT_BUSY(stype)) && tmo)
  tmo--;

 if (!tmo) {
  au_writel(I2SPCR_STOP(stype), I2S_PCR(pscdata));
  au_sync();
  ret = -ETIMEDOUT;
 }
out:
 return ret;
}
