
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct onyx {int mutex; } ;


 int ONYX_REG_DIG_INFO1 ;
 int ONYX_REG_DIG_INFO2 ;
 int ONYX_REG_DIG_INFO3 ;
 int ONYX_REG_DIG_INFO4 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int onyx_read_register (struct onyx*,int ,int*) ;
 struct onyx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int onyx_spdif_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct onyx *onyx = snd_kcontrol_chip(kcontrol);
 u8 v;

 mutex_lock(&onyx->mutex);
 onyx_read_register(onyx, ONYX_REG_DIG_INFO1, &v);
 ucontrol->value.iec958.status[0] = v & 0x3e;

 onyx_read_register(onyx, ONYX_REG_DIG_INFO2, &v);
 ucontrol->value.iec958.status[1] = v;

 onyx_read_register(onyx, ONYX_REG_DIG_INFO3, &v);
 ucontrol->value.iec958.status[3] = v & 0x3f;

 onyx_read_register(onyx, ONYX_REG_DIG_INFO4, &v);
 ucontrol->value.iec958.status[4] = v & 0x0f;
 mutex_unlock(&onyx->mutex);

 return 0;
}
