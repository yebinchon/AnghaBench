
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct au1xpsc_audio_data {int lock; } ;


 int AC97_CDC (struct au1xpsc_audio_data*) ;
 int AC97_EVNT (struct au1xpsc_audio_data*) ;
 unsigned short AC97_RW_RETRIES ;
 int PSC_AC97CDC_INDX (unsigned short) ;
 int PSC_AC97CDC_RD ;
 int PSC_AC97EVNT_CD ;
 struct au1xpsc_audio_data* au1xpsc_ac97_workdata ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static unsigned short au1xpsc_ac97_read(struct snd_ac97 *ac97,
     unsigned short reg)
{

 struct au1xpsc_audio_data *pscdata = au1xpsc_ac97_workdata;
 unsigned short data, retry, tmo;

 au_writel(PSC_AC97EVNT_CD, AC97_EVNT(pscdata));
 au_sync();

 retry = AC97_RW_RETRIES;
 do {
  mutex_lock(&pscdata->lock);

  au_writel(PSC_AC97CDC_RD | PSC_AC97CDC_INDX(reg),
     AC97_CDC(pscdata));
  au_sync();

  tmo = 2000;
  while ((!(au_readl(AC97_EVNT(pscdata)) & PSC_AC97EVNT_CD))
   && --tmo)
   udelay(2);

  data = au_readl(AC97_CDC(pscdata)) & 0xffff;

  au_writel(PSC_AC97EVNT_CD, AC97_EVNT(pscdata));
  au_sync();

  mutex_unlock(&pscdata->lock);
 } while (--retry && !tmo);

 return retry ? data : 0xffff;
}
