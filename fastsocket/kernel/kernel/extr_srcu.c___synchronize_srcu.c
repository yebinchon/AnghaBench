
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int completed; int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout_interruptible (int) ;
 scalar_t__ srcu_readers_active_idx (struct srcu_struct*,int) ;

void __synchronize_srcu(struct srcu_struct *sp, void (*sync_func)(void))
{
 int idx;

 idx = sp->completed;
 mutex_lock(&sp->mutex);
 if ((sp->completed - idx) >= 2) {
  mutex_unlock(&sp->mutex);
  return;
 }

 sync_func();
 idx = sp->completed & 0x1;
 sp->completed++;

 sync_func();
 while (srcu_readers_active_idx(sp, idx))
  schedule_timeout_interruptible(1);

 sync_func();
 mutex_unlock(&sp->mutex);
}
