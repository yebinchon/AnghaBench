
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int (* private_free ) (struct snd_kcontrol*) ;} ;


 int kfree (struct snd_kcontrol*) ;
 int stub1 (struct snd_kcontrol*) ;

void snd_ctl_free_one(struct snd_kcontrol *kcontrol)
{
 if (kcontrol) {
  if (kcontrol->private_free)
   kcontrol->private_free(kcontrol);
  kfree(kcontrol);
 }
}
