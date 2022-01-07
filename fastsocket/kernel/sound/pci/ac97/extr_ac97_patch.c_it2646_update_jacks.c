
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 scalar_t__ is_shared_clfeout (struct snd_ac97*) ;
 scalar_t__ is_shared_surrout (struct snd_ac97*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int,int,int) ;

__attribute__((used)) static void it2646_update_jacks(struct snd_ac97 *ac97)
{

 snd_ac97_update_bits(ac97, 0x76, 1 << 9,
        is_shared_surrout(ac97) ? (1<<9) : 0);

 snd_ac97_update_bits(ac97, 0x76, 1 << 10,
        is_shared_clfeout(ac97) ? (1<<10) : 0);
}
