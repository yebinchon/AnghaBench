
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {int lock; } ;


 int GFP_KERNEL ;
 struct snd_seq_timer* kzalloc (int,int ) ;
 int snd_printd (char*) ;
 int snd_seq_timer_defaults (struct snd_seq_timer*) ;
 int snd_seq_timer_reset (struct snd_seq_timer*) ;
 int spin_lock_init (int *) ;

struct snd_seq_timer *snd_seq_timer_new(void)
{
 struct snd_seq_timer *tmr;

 tmr = kzalloc(sizeof(*tmr), GFP_KERNEL);
 if (tmr == ((void*)0)) {
  snd_printd("malloc failed for snd_seq_timer_new() \n");
  return ((void*)0);
 }
 spin_lock_init(&tmr->lock);


 snd_seq_timer_defaults(tmr);


 snd_seq_timer_reset(tmr);

 return tmr;
}
