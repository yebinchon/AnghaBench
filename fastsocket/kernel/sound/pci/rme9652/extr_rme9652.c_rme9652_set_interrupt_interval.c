
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int running; int lock; int control_register; } ;


 int RME9652_control_register ;
 int RME9652_latency ;
 int rme9652_compute_period_size (struct snd_rme9652*) ;
 int rme9652_encode_latency (int) ;
 int rme9652_start (struct snd_rme9652*) ;
 int rme9652_stop (struct snd_rme9652*) ;
 int rme9652_write (struct snd_rme9652*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int rme9652_set_interrupt_interval(struct snd_rme9652 *s,
       unsigned int frames)
{
 int restart = 0;
 int n;

 spin_lock_irq(&s->lock);

 if ((restart = s->running)) {
  rme9652_stop(s);
 }

 frames >>= 7;
 n = 0;
 while (frames) {
  n++;
  frames >>= 1;
 }

 s->control_register &= ~RME9652_latency;
 s->control_register |= rme9652_encode_latency(n);

 rme9652_write(s, RME9652_control_register, s->control_register);

 rme9652_compute_period_size(s);

 if (restart)
  rme9652_start(s);

 spin_unlock_irq(&s->lock);

 return 0;
}
