
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {unsigned int private_value; int id; TYPE_1__* vd; } ;
struct oxygen {int card; } ;
struct TYPE_2__ {unsigned int access; } ;


 unsigned int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int snd_ctl_notify (int ,int ,int *) ;

__attribute__((used)) static void activate_control(struct oxygen *chip,
        struct snd_kcontrol *ctl, unsigned int mode)
{
 unsigned int access;

 if (ctl->private_value & mode)
  access = 0;
 else
  access = SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 if ((ctl->vd[0].access & SNDRV_CTL_ELEM_ACCESS_INACTIVE) != access) {
  ctl->vd[0].access ^= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_INFO, &ctl->id);
 }
}
