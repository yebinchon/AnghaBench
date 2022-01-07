
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_user {int qused; int qtail; int queue_size; int qchange_sleep; int fasync; int qlock; struct snd_timer_read* queue; int overrun; } ;
struct snd_timer_read {unsigned long resolution; unsigned long ticks; } ;
struct snd_timer_instance {struct snd_timer_user* callback_data; } ;


 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void snd_timer_user_interrupt(struct snd_timer_instance *timeri,
         unsigned long resolution,
         unsigned long ticks)
{
 struct snd_timer_user *tu = timeri->callback_data;
 struct snd_timer_read *r;
 int prev;

 spin_lock(&tu->qlock);
 if (tu->qused > 0) {
  prev = tu->qtail == 0 ? tu->queue_size - 1 : tu->qtail - 1;
  r = &tu->queue[prev];
  if (r->resolution == resolution) {
   r->ticks += ticks;
   goto __wake;
  }
 }
 if (tu->qused >= tu->queue_size) {
  tu->overrun++;
 } else {
  r = &tu->queue[tu->qtail++];
  tu->qtail %= tu->queue_size;
  r->resolution = resolution;
  r->ticks = ticks;
  tu->qused++;
 }
      __wake:
 spin_unlock(&tu->qlock);
 kill_fasync(&tu->fasync, SIGIO, POLL_IN);
 wake_up(&tu->qchange_sleep);
}
