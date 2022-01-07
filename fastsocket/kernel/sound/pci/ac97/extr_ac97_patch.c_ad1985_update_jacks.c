
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_AD_SERIAL_CFG ;
 int ad1888_update_jacks (struct snd_ac97*) ;
 scalar_t__ is_shared_micin (struct snd_ac97*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;

__attribute__((used)) static void ad1985_update_jacks(struct snd_ac97 *ac97)
{
 ad1888_update_jacks(ac97);

 snd_ac97_update_bits(ac97, AC97_AD_SERIAL_CFG, 1 << 9,
        is_shared_micin(ac97) ? 1 << 9 : 0);
}
