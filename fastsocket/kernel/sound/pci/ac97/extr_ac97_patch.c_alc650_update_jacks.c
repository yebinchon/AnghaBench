
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_ALC650_CLOCK ;
 int AC97_ALC650_GPIO_STATUS ;
 int AC97_ALC650_MULTICH ;
 int is_shared_clfeout (struct snd_ac97*) ;
 int is_shared_surrout (struct snd_ac97*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;

__attribute__((used)) static void alc650_update_jacks(struct snd_ac97 *ac97)
{
 int shared;


 shared = is_shared_surrout(ac97);
 snd_ac97_update_bits(ac97, AC97_ALC650_MULTICH, 1 << 9,
        shared ? (1 << 9) : 0);

 shared = is_shared_clfeout(ac97);

 snd_ac97_update_bits(ac97, AC97_ALC650_CLOCK, 1 << 12,
        shared ? (1 << 12) : 0);

 snd_ac97_update_bits(ac97, AC97_ALC650_MULTICH, 1 << 10,
        shared ? (1 << 10) : 0);

 snd_ac97_update_bits(ac97, AC97_ALC650_GPIO_STATUS, 0x100,
        shared ? 0 : 0x100);
}
