
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int caps; int * build_ops; } ;


 int AC97_SIGMATEL_ANALOG ;
 int AC97_SIGMATEL_BIAS1 ;
 int AC97_SIGMATEL_BIAS2 ;
 int AC97_SIGMATEL_CIC1 ;
 int AC97_SIGMATEL_CIC2 ;
 int AC97_SIGMATEL_DAC2INVERT ;
 int AC97_SIGMATEL_MULTICHN ;
 int patch_sigmatel_stac9708_ops ;
 int snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_sigmatel_stac9708(struct snd_ac97 * ac97)
{
 unsigned int codec72, codec6c;

 ac97->build_ops = &patch_sigmatel_stac9708_ops;
 ac97->caps |= 0x10;

 codec72 = snd_ac97_read(ac97, AC97_SIGMATEL_BIAS2) & 0x8000;
 codec6c = snd_ac97_read(ac97, AC97_SIGMATEL_ANALOG);

 if ((codec72==0) && (codec6c==0)) {
  snd_ac97_write_cache(ac97, AC97_SIGMATEL_CIC1, 0xabba);
  snd_ac97_write_cache(ac97, AC97_SIGMATEL_CIC2, 0x1000);
  snd_ac97_write_cache(ac97, AC97_SIGMATEL_BIAS1, 0xabba);
  snd_ac97_write_cache(ac97, AC97_SIGMATEL_BIAS2, 0x0007);
 } else if ((codec72==0x8000) && (codec6c==0)) {
  snd_ac97_write_cache(ac97, AC97_SIGMATEL_CIC1, 0xabba);
  snd_ac97_write_cache(ac97, AC97_SIGMATEL_CIC2, 0x1001);
  snd_ac97_write_cache(ac97, AC97_SIGMATEL_DAC2INVERT, 0x0008);
 } else if ((codec72==0x8000) && (codec6c==0x0080)) {

 }
 snd_ac97_write_cache(ac97, AC97_SIGMATEL_MULTICHN, 0x0000);
 return 0;
}
