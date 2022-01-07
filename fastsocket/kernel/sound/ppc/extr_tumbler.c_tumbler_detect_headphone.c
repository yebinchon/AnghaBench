
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {struct pmac_tumbler* mixer_data; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct pmac_tumbler {TYPE_1__ hp_detect; } ;


 int read_audio_gpio (TYPE_1__*) ;

__attribute__((used)) static int tumbler_detect_headphone(struct snd_pmac *chip)
{
 struct pmac_tumbler *mix = chip->mixer_data;
 int detect = 0;

 if (mix->hp_detect.addr)
  detect |= read_audio_gpio(&mix->hp_detect);
 return detect;
}
