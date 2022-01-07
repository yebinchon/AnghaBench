
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct au1xpsc_audio_data {int lock; } ;


 int AC97_CDC (struct au1xpsc_audio_data*) ;
 int AC97_EVNT (struct au1xpsc_audio_data*) ;
 unsigned int AC97_RW_RETRIES ;
 unsigned short PSC_AC97CDC_INDX (unsigned short) ;
 unsigned short PSC_AC97EVNT_CD ;
 struct au1xpsc_audio_data* au1xpsc_ac97_workdata ;
 unsigned short au_readl (int ) ;
 int au_sync () ;
 int au_writel (unsigned short,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static void au1xpsc_ac97_write(struct snd_ac97 *ac97, unsigned short reg,
    unsigned short val)
{

 struct au1xpsc_audio_data *pscdata = au1xpsc_ac97_workdata;
 unsigned int tmo, retry;

 au_writel(PSC_AC97EVNT_CD, AC97_EVNT(pscdata));
 au_sync();

 retry = AC97_RW_RETRIES;
 do {
  mutex_lock(&pscdata->lock);

  au_writel(PSC_AC97CDC_INDX(reg) | (val & 0xffff),
     AC97_CDC(pscdata));
  au_sync();

  tmo = 2000;
  while ((!(au_readl(AC97_EVNT(pscdata)) & PSC_AC97EVNT_CD))
         && --tmo)
   udelay(2);

  au_writel(PSC_AC97EVNT_CD, AC97_EVNT(pscdata));
  au_sync();

  mutex_unlock(&pscdata->lock);
 } while (--retry && !tmo);
}
