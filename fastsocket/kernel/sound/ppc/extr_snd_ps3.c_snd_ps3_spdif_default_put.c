
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int ps3av_mode_cs_info ;

__attribute__((used)) static int snd_ps3_spdif_default_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 if (memcmp(ps3av_mode_cs_info, ucontrol->value.iec958.status, 8)) {
  memcpy(ps3av_mode_cs_info, ucontrol->value.iec958.status, 8);
  return 1;
 }
 return 0;
}
