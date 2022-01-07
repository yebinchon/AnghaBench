
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int * master_volume; int * master_mute; } ;
struct snd_kcontrol {int dummy; } ;


 struct sonicvibes* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static void snd_sonicvibes_master_free(struct snd_kcontrol *kcontrol)
{
 struct sonicvibes *sonic = snd_kcontrol_chip(kcontrol);
 sonic->master_mute = ((void*)0);
 sonic->master_volume = ((void*)0);
}
