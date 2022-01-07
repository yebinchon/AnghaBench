
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdsp {int io_type; int lock; } ;



 int EBUSY ;
 int EIO ;



 int hdsp_pref_sync_ref (struct hdsp*) ;
 int hdsp_set_pref_sync_ref (struct hdsp*,unsigned int) ;
 int snd_hdsp_use_is_exclusive (struct hdsp*) ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_put_pref_sync_ref(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);
 int change, max;
 unsigned int val;

 if (!snd_hdsp_use_is_exclusive(hdsp))
  return -EBUSY;

 switch (hdsp->io_type) {
 case 131:
 case 129:
  max = 6;
  break;
 case 128:
  max = 4;
  break;
 case 130:
  max = 3;
  break;
 default:
  return -EIO;
 }

 val = ucontrol->value.enumerated.item[0] % max;
 spin_lock_irq(&hdsp->lock);
 change = (int)val != hdsp_pref_sync_ref(hdsp);
 hdsp_set_pref_sync_ref(hdsp, val);
 spin_unlock_irq(&hdsp->lock);
 return change;
}
