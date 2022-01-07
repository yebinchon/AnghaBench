
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {struct snd_emux* name; struct snd_emux* voices; scalar_t__ sflist; int voice_lock; int tlist; scalar_t__ timer_active; } ;


 int EINVAL ;
 int del_timer (int *) ;
 int kfree (struct snd_emux*) ;
 int snd_emux_delete_hwdep (struct snd_emux*) ;
 int snd_emux_delete_virmidi (struct snd_emux*) ;
 int snd_emux_detach_seq (struct snd_emux*) ;
 int snd_emux_detach_seq_oss (struct snd_emux*) ;
 int snd_emux_proc_free (struct snd_emux*) ;
 int snd_sf_free (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_emux_free(struct snd_emux *emu)
{
 unsigned long flags;

 if (! emu)
  return -EINVAL;

 spin_lock_irqsave(&emu->voice_lock, flags);
 if (emu->timer_active)
  del_timer(&emu->tlist);
 spin_unlock_irqrestore(&emu->voice_lock, flags);




 snd_emux_delete_virmidi(emu);



 snd_emux_detach_seq(emu);

 snd_emux_delete_hwdep(emu);

 if (emu->sflist)
  snd_sf_free(emu->sflist);

 kfree(emu->voices);
 kfree(emu->name);
 kfree(emu);
 return 0;
}
