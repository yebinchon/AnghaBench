
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct control_runtime {int line_phono_switch; } ;


 struct control_runtime* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int usb6fire_control_line_phono_get(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct control_runtime *rt = snd_kcontrol_chip(kcontrol);
 ucontrol->value.integer.value[0] = rt->line_phono_switch;
 return 0;
}
