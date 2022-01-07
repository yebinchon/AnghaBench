
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sb {int mixer_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int SB_DSP_CAPTURE_SOURCE ;
 unsigned char SB_DSP_MIXS_CD ;
 unsigned char SB_DSP_MIXS_LINE ;
 unsigned char SB_DSP_MIXS_MIC ;
 struct snd_sb* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned char snd_sbmixer_read (struct snd_sb*,int ) ;
 int snd_sbmixer_write (struct snd_sb*,int ,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb8mixer_put_mux(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sb *sb = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int change;
 unsigned char nval, oval;

 if (ucontrol->value.enumerated.item[0] > 2)
  return -EINVAL;
 switch (ucontrol->value.enumerated.item[0]) {
 case 1:
  nval = SB_DSP_MIXS_CD;
  break;
 case 2:
  nval = SB_DSP_MIXS_LINE;
  break;
 default:
  nval = SB_DSP_MIXS_MIC;
 }
 nval <<= 1;
 spin_lock_irqsave(&sb->mixer_lock, flags);
 oval = snd_sbmixer_read(sb, SB_DSP_CAPTURE_SOURCE);
 nval |= oval & ~0x06;
 change = nval != oval;
 if (change)
  snd_sbmixer_write(sb, SB_DSP_CAPTURE_SOURCE, nval);
 spin_unlock_irqrestore(&sb->mixer_lock, flags);
 return change;
}
