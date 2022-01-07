
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sb_csp {unsigned char qpos_left; unsigned char qpos_right; int qpos_changed; int q_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned char* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned char SNDRV_SB_CSP_QSOUND_MAX_RIGHT ;
 struct snd_sb_csp* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb_qsound_space_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sb_csp *p = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int change;
 unsigned char nval1, nval2;

 nval1 = ucontrol->value.integer.value[0];
 if (nval1 > SNDRV_SB_CSP_QSOUND_MAX_RIGHT)
  nval1 = SNDRV_SB_CSP_QSOUND_MAX_RIGHT;
 nval2 = ucontrol->value.integer.value[1];
 if (nval2 > SNDRV_SB_CSP_QSOUND_MAX_RIGHT)
  nval2 = SNDRV_SB_CSP_QSOUND_MAX_RIGHT;
 spin_lock_irqsave(&p->q_lock, flags);
 change = p->qpos_left != nval1 || p->qpos_right != nval2;
 p->qpos_left = nval1;
 p->qpos_right = nval2;
 p->qpos_changed = change;
 spin_unlock_irqrestore(&p->q_lock, flags);
 return change;
}
