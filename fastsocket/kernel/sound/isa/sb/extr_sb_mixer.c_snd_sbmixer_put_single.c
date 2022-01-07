
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sb {int mixer_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_sb* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned char snd_sbmixer_read (struct snd_sb*,int) ;
 int snd_sbmixer_write (struct snd_sb*,int,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sbmixer_put_single(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sb *sb = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int reg = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 16) & 0x07;
 int mask = (kcontrol->private_value >> 24) & 0xff;
 int change;
 unsigned char val, oval;

 val = (ucontrol->value.integer.value[0] & mask) << shift;
 spin_lock_irqsave(&sb->mixer_lock, flags);
 oval = snd_sbmixer_read(sb, reg);
 val = (oval & ~(mask << shift)) | val;
 change = val != oval;
 if (change)
  snd_sbmixer_write(sb, reg, val);
 spin_unlock_irqrestore(&sb->mixer_lock, flags);
 return change;
}
