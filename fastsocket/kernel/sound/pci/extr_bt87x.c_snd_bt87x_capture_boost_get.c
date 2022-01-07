
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_bt87x {int reg_control; } ;


 int CTL_A_G2X ;
 struct snd_bt87x* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_bt87x_capture_boost_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *value)
{
 struct snd_bt87x *chip = snd_kcontrol_chip(kcontrol);

 value->value.integer.value[0] = !! (chip->reg_control & CTL_A_G2X);
 return 0;
}
