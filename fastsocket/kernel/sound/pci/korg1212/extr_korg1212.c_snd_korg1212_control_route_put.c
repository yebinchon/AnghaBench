
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_korg1212 {int lock; TYPE_1__* sharedBufferPtr; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_5__ {scalar_t__* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_4__ {unsigned int* routeData; scalar_t__* volumeData; } ;


 scalar_t__ kAudioChannels ;
 struct snd_korg1212* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_korg1212_control_route_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *u)
{
 struct snd_korg1212 *korg1212 = snd_kcontrol_chip(kcontrol);
        int change = 0, i;

 spin_lock_irq(&korg1212->lock);

 i = kcontrol->private_value;

 if (u->value.enumerated.item[0] < kAudioChannels &&
     u->value.enumerated.item[0] !=
     (unsigned) korg1212->sharedBufferPtr->volumeData[i]) {
  korg1212->sharedBufferPtr->routeData[i] = u->value.enumerated.item[0];
  change = 1;
 }

 if (i >= 8) {
  if (u->value.enumerated.item[1] < kAudioChannels &&
      u->value.enumerated.item[1] !=
      (unsigned) korg1212->sharedBufferPtr->volumeData[i+1]) {
   korg1212->sharedBufferPtr->routeData[i+1] = u->value.enumerated.item[1];
   change = 1;
  }
 }

 spin_unlock_irq(&korg1212->lock);

        return change;
}
