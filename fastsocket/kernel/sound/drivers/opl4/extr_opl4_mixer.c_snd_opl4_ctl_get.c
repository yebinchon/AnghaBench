
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_opl4 {int reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_opl4* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_opl4_read (struct snd_opl4*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_opl4_ctl_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_opl4 *opl4 = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 u8 reg = kcontrol->private_value;
 u8 value;

 spin_lock_irqsave(&opl4->reg_lock, flags);
 value = snd_opl4_read(opl4, reg);
 spin_unlock_irqrestore(&opl4->reg_lock, flags);
 ucontrol->value.integer.value[0] = 7 - (value & 7);
 ucontrol->value.integer.value[1] = 7 - ((value >> 3) & 7);
 return 0;
}
