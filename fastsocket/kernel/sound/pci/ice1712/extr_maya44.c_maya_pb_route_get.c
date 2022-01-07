
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_maya44 {int ice; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 int maya_pb_route_shift (int) ;
 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 int snd_ice1724_get_route_val (int ,int ) ;
 struct snd_maya44* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int maya_pb_route_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_maya44 *chip = snd_kcontrol_chip(kcontrol);
 int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 ucontrol->value.enumerated.item[0] =
  snd_ice1724_get_route_val(chip->ice, maya_pb_route_shift(idx));
 return 0;
}
