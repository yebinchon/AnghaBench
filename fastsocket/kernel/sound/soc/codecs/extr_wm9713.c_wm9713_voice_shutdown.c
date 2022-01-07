
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int AC97_EXTENDED_MID ;
 int AC97_HANDSET_RATE ;
 int BUG_ON (int) ;
 int SND_SOC_DAPM_PRE_PMD ;
 int ac97_read (struct snd_soc_codec*,int ) ;
 int ac97_write (struct snd_soc_codec*,int ,int) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_interruptible (int ) ;

__attribute__((used)) static int wm9713_voice_shutdown(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_codec *codec = w->codec;
 u16 status, rate;

 BUG_ON(event != SND_SOC_DAPM_PRE_PMD);


 status = ac97_read(codec, AC97_EXTENDED_MID) | 0x1000;
 rate = ac97_read(codec, AC97_HANDSET_RATE) & 0xF0FF;
 ac97_write(codec, AC97_HANDSET_RATE, rate | 0x0200);
 schedule_timeout_interruptible(msecs_to_jiffies(1));
 ac97_write(codec, AC97_HANDSET_RATE, rate | 0x0F00);
 ac97_write(codec, AC97_EXTENDED_MID, status);

 return 0;
}
