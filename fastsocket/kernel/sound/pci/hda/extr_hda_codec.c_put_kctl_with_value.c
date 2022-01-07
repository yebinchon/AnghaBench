
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int (* put ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct snd_ctl_elem_value*) ;
 struct snd_ctl_elem_value* kzalloc (int,int ) ;
 int stub1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int put_kctl_with_value(struct snd_kcontrol *kctl, int val)
{
 struct snd_ctl_elem_value *ucontrol;
 ucontrol = kzalloc(sizeof(*ucontrol), GFP_KERNEL);
 if (!ucontrol)
  return -ENOMEM;
 ucontrol->value.integer.value[0] = val;
 ucontrol->value.integer.value[1] = val;
 kctl->put(kctl, ucontrol);
 kfree(ucontrol);
 return 0;
}
