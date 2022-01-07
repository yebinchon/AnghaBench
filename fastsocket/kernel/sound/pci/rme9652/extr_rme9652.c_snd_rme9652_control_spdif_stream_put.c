
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_rme9652 {int creg_spdif_stream; int control_register; int lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int RME9652_Dolby ;
 int RME9652_EMP ;
 int RME9652_PRO ;
 int RME9652_control_register ;
 int rme9652_write (struct snd_rme9652*,int ,int) ;
 struct snd_rme9652* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_rme9652_convert_from_aes (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rme9652_control_spdif_stream_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_rme9652 *rme9652 = snd_kcontrol_chip(kcontrol);
 int change;
 u32 val;

 val = snd_rme9652_convert_from_aes(&ucontrol->value.iec958);
 spin_lock_irq(&rme9652->lock);
 change = val != rme9652->creg_spdif_stream;
 rme9652->creg_spdif_stream = val;
 rme9652->control_register &= ~(RME9652_PRO | RME9652_Dolby | RME9652_EMP);
 rme9652_write(rme9652, RME9652_control_register, rme9652->control_register |= val);
 spin_unlock_irq(&rme9652->lock);
 return change;
}
