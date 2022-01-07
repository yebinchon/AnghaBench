
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* codec_cfg; scalar_t__* unchained; scalar_t__* chained; } ;
struct TYPE_4__ {TYPE_1__ ad18xx; } ;
struct snd_ac97 {TYPE_2__ spec; } ;


 int AC97_AD_CODEC_CFG ;
 int AC97_AD_SERIAL_CFG ;
 scalar_t__ patch_ad1881_chained1 (struct snd_ac97*,int,int) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,scalar_t__) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static void patch_ad1881_chained(struct snd_ac97 * ac97, int unchained_idx, int cidx1, int cidx2)
{

 if (ac97->spec.ad18xx.unchained[cidx1] || ac97->spec.ad18xx.chained[cidx1])
  cidx1 = -1;
 if (ac97->spec.ad18xx.unchained[cidx2] || ac97->spec.ad18xx.chained[cidx2])
  cidx2 = -1;
 if (cidx1 < 0 && cidx2 < 0)
  return;

 snd_ac97_update_bits(ac97, AC97_AD_SERIAL_CFG, 0x7000,
        ac97->spec.ad18xx.unchained[unchained_idx]);
 snd_ac97_write_cache(ac97, AC97_AD_CODEC_CFG, 0x0002);
 ac97->spec.ad18xx.codec_cfg[unchained_idx] = 0x0002;
 if (cidx1 >= 0) {
  if (cidx2 < 0)
   patch_ad1881_chained1(ac97, cidx1, 0);
  else if (patch_ad1881_chained1(ac97, cidx1, 0x0006))
   patch_ad1881_chained1(ac97, cidx2, 0);
  else if (patch_ad1881_chained1(ac97, cidx2, 0x0006))
   patch_ad1881_chained1(ac97, cidx1, 0);
 } else if (cidx2 >= 0) {
  patch_ad1881_chained1(ac97, cidx2, 0);
 }
}
