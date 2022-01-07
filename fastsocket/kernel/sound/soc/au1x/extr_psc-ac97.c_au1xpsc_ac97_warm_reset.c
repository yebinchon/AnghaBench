
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct au1xpsc_audio_data {int dummy; } ;


 int AC97_RST (struct au1xpsc_audio_data*) ;
 int PSC_AC97RST_SNC ;
 struct au1xpsc_audio_data* au1xpsc_ac97_workdata ;
 int au_sync () ;
 int au_writel (int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void au1xpsc_ac97_warm_reset(struct snd_ac97 *ac97)
{

 struct au1xpsc_audio_data *pscdata = au1xpsc_ac97_workdata;

 au_writel(PSC_AC97RST_SNC, AC97_RST(pscdata));
 au_sync();
 msleep(10);
 au_writel(0, AC97_RST(pscdata));
 au_sync();
}
