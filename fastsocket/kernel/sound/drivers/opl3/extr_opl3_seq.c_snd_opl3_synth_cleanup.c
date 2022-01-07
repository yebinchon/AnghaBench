
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {struct snd_hwdep* hwdep; int sys_timer_lock; scalar_t__ sys_timer_status; int tlist; } ;
struct snd_hwdep {int open_wait; int open_mutex; int used; } ;


 int del_timer (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_opl3_reset (struct snd_opl3*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void snd_opl3_synth_cleanup(struct snd_opl3 * opl3)
{
 unsigned long flags;
 struct snd_hwdep *hwdep;


 spin_lock_irqsave(&opl3->sys_timer_lock, flags);
 if (opl3->sys_timer_status) {
  del_timer(&opl3->tlist);
  opl3->sys_timer_status = 0;
 }
 spin_unlock_irqrestore(&opl3->sys_timer_lock, flags);

 snd_opl3_reset(opl3);
 hwdep = opl3->hwdep;
 mutex_lock(&hwdep->open_mutex);
 hwdep->used--;
 mutex_unlock(&hwdep->open_mutex);
 wake_up(&hwdep->open_wait);
}
