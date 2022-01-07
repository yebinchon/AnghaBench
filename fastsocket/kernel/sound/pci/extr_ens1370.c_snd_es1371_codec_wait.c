
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_RESET ;
 int AC97_VENDOR_ID1 ;
 int AC97_VENDOR_ID2 ;
 int msleep (int) ;
 int snd_es1371_codec_read (struct snd_ac97*,int ) ;

__attribute__((used)) static void snd_es1371_codec_wait(struct snd_ac97 *ac97)
{
 msleep(750);
 snd_es1371_codec_read(ac97, AC97_RESET);
 snd_es1371_codec_read(ac97, AC97_VENDOR_ID1);
 snd_es1371_codec_read(ac97, AC97_VENDOR_ID2);
 msleep(50);
}
