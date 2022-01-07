
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb_csp {int qpos_left; int qpos_right; int qsound_space; int qsound_switch; int q_lock; scalar_t__ qpos_changed; TYPE_1__* chip; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {struct snd_card* card; } ;


 int EINVAL ;
 int SNDRV_SB_CSP_QSOUND_MAX_RIGHT ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_sb_csp*) ;
 int snd_sb_qsound_destroy (struct snd_sb_csp*) ;
 int snd_sb_qsound_space ;
 int snd_sb_qsound_switch ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int snd_sb_qsound_build(struct snd_sb_csp * p)
{
 struct snd_card *card;
 int err;

 if (snd_BUG_ON(!p))
  return -EINVAL;

 card = p->chip->card;
 p->qpos_left = p->qpos_right = SNDRV_SB_CSP_QSOUND_MAX_RIGHT / 2;
 p->qpos_changed = 0;

 spin_lock_init(&p->q_lock);

 if ((err = snd_ctl_add(card, p->qsound_switch = snd_ctl_new1(&snd_sb_qsound_switch, p))) < 0)
  goto __error;
 if ((err = snd_ctl_add(card, p->qsound_space = snd_ctl_new1(&snd_sb_qsound_space, p))) < 0)
  goto __error;

 return 0;

     __error:
 snd_sb_qsound_destroy(p);
 return err;
}
