
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sb {int mixer_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int EINVAL ;
 int SB_ALS4000_MONO_IO_CTRL ;
 struct snd_sb* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned char snd_sbmixer_read (struct snd_sb*,int ) ;
 int snd_sbmixer_write (struct snd_sb*,int ,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_als4k_mono_capture_route_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sb *sb = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int change;
 unsigned char nval, oval;

 if (ucontrol->value.enumerated.item[0] > 2)
  return -EINVAL;
 spin_lock_irqsave(&sb->mixer_lock, flags);
 oval = snd_sbmixer_read(sb, SB_ALS4000_MONO_IO_CTRL);

 nval = (oval & ~(3 << 6))
      | (ucontrol->value.enumerated.item[0] << 6);
 change = nval != oval;
 if (change)
  snd_sbmixer_write(sb, SB_ALS4000_MONO_IO_CTRL, nval);
 spin_unlock_irqrestore(&sb->mixer_lock, flags);
 return change;
}
