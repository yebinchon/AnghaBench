
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;


 int snd_ctl_sync_vmaster (struct snd_kcontrol*,int) ;

void snd_ctl_sync_vmaster_hook(struct snd_kcontrol *kcontrol)
{
 snd_ctl_sync_vmaster(kcontrol, 1);
}
