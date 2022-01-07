
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dapm_widget {int codec; } ;
struct snd_kcontrol {int dummy; } ;


 int AC97_CD ;
 int AC97_LINE ;
 int AC97_PCM ;
 int AC97_PC_BEEP ;
 int AC97_PHONE ;
 int AC97_VIDEO ;
 int HPL_MIXER ;
 int HPR_MIXER ;
 int ac97_read (int ,int ) ;
 int ac97_write (int ,int ,int) ;

__attribute__((used)) static int mixer_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *k, int event)
{
 u16 l, r, beep, line, phone, mic, pcm, aux;

 l = ac97_read(w->codec, HPL_MIXER);
 r = ac97_read(w->codec, HPR_MIXER);
 beep = ac97_read(w->codec, AC97_PC_BEEP);
 mic = ac97_read(w->codec, AC97_VIDEO);
 phone = ac97_read(w->codec, AC97_PHONE);
 line = ac97_read(w->codec, AC97_LINE);
 pcm = ac97_read(w->codec, AC97_PCM);
 aux = ac97_read(w->codec, AC97_CD);

 if (l & 0x1 || r & 0x1)
  ac97_write(w->codec, AC97_VIDEO, mic & 0x7fff);
 else
  ac97_write(w->codec, AC97_VIDEO, mic | 0x8000);

 if (l & 0x2 || r & 0x2)
  ac97_write(w->codec, AC97_PCM, pcm & 0x7fff);
 else
  ac97_write(w->codec, AC97_PCM, pcm | 0x8000);

 if (l & 0x4 || r & 0x4)
  ac97_write(w->codec, AC97_LINE, line & 0x7fff);
 else
  ac97_write(w->codec, AC97_LINE, line | 0x8000);

 if (l & 0x8 || r & 0x8)
  ac97_write(w->codec, AC97_PHONE, phone & 0x7fff);
 else
  ac97_write(w->codec, AC97_PHONE, phone | 0x8000);

 if (l & 0x10 || r & 0x10)
  ac97_write(w->codec, AC97_CD, aux & 0x7fff);
 else
  ac97_write(w->codec, AC97_CD, aux | 0x8000);

 if (l & 0x20 || r & 0x20)
  ac97_write(w->codec, AC97_PC_BEEP, beep & 0x7fff);
 else
  ac97_write(w->codec, AC97_PC_BEEP, beep | 0x8000);

 return 0;
}
