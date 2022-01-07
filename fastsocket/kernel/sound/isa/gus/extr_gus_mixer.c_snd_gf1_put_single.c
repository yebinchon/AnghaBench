
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_6__ {unsigned char active_voice; } ;
struct snd_gus_card {unsigned char mix_cntrl_reg; int reg_lock; TYPE_3__ gf1; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int GF1PAGE ;
 int GUSP (struct snd_gus_card*,int ) ;
 int MIXCNTRLREG ;
 int outb (unsigned char,int ) ;
 struct snd_gus_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_gf1_put_single(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_gus_card *gus = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int shift = kcontrol->private_value & 0xff;
 int invert = (kcontrol->private_value >> 8) & 1;
 int change;
 unsigned char oval, nval;

 nval = ucontrol->value.integer.value[0] & 1;
 if (invert)
  nval ^= 1;
 nval <<= shift;
 spin_lock_irqsave(&gus->reg_lock, flags);
 oval = gus->mix_cntrl_reg;
 nval = (oval & ~(1 << shift)) | nval;
 change = nval != oval;
 outb(gus->mix_cntrl_reg = nval, GUSP(gus, MIXCNTRLREG));
 outb(gus->gf1.active_voice = 0, GUSP(gus, GF1PAGE));
 spin_unlock_irqrestore(&gus->reg_lock, flags);
 return change;
}
