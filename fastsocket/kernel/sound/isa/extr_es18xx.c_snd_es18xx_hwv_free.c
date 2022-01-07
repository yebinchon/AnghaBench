
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_es18xx {int * hw_switch; int * hw_volume; int * master_switch; int * master_volume; } ;


 struct snd_es18xx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static void snd_es18xx_hwv_free(struct snd_kcontrol *kcontrol)
{
 struct snd_es18xx *chip = snd_kcontrol_chip(kcontrol);
 chip->master_volume = ((void*)0);
 chip->master_switch = ((void*)0);
 chip->hw_volume = ((void*)0);
 chip->hw_switch = ((void*)0);
}
