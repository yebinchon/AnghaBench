
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {unsigned char** ics_regs; } ;
struct snd_gus_card {int reg_lock; TYPE_1__ gf1; } ;
struct TYPE_5__ {unsigned char* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;


 struct snd_gus_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ics_get_double(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_gus_card *gus = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int addr = kcontrol->private_value & 0xff;
 unsigned char left, right;

 spin_lock_irqsave(&gus->reg_lock, flags);
 left = gus->gf1.ics_regs[addr][0];
 right = gus->gf1.ics_regs[addr][1];
 spin_unlock_irqrestore(&gus->reg_lock, flags);
 ucontrol->value.integer.value[0] = left & 127;
 ucontrol->value.integer.value[1] = right & 127;
 return 0;
}
