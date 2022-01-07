
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3sa2 {int * master_volume; int * master_switch; } ;
struct snd_kcontrol {int dummy; } ;


 struct snd_opl3sa2* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static void snd_opl3sa2_master_free(struct snd_kcontrol *kcontrol)
{
 struct snd_opl3sa2 *chip = snd_kcontrol_chip(kcontrol);
 chip->master_switch = ((void*)0);
 chip->master_volume = ((void*)0);
}
