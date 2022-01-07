
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct layout_dev {int switch_on_headphone; int switch_on_lineout; } ;


 int ENODEV ;
 struct layout_dev* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int detect_choice_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct layout_dev *ldev = snd_kcontrol_chip(kcontrol);

 switch (kcontrol->private_value) {
 case 0:
  ldev->switch_on_headphone = !!ucontrol->value.integer.value[0];
  break;
 case 1:
  ldev->switch_on_lineout = !!ucontrol->value.integer.value[0];
  break;
 default:
  return -ENODEV;
 }
 return 1;
}
