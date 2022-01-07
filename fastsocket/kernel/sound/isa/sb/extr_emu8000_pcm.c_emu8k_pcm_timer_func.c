
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct snd_emu8k_pcm {int last_ptr; int buf_size; int period_pos; int period_size; int timer_lock; int substream; TYPE_1__ timer; } ;


 int add_timer (TYPE_1__*) ;
 int emu8k_get_curpos (struct snd_emu8k_pcm*,int ) ;
 scalar_t__ jiffies ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void emu8k_pcm_timer_func(unsigned long data)
{
 struct snd_emu8k_pcm *rec = (struct snd_emu8k_pcm *)data;
 int ptr, delta;

 spin_lock(&rec->timer_lock);

 ptr = emu8k_get_curpos(rec, 0);
 if (ptr < rec->last_ptr)
  delta = ptr + rec->buf_size - rec->last_ptr;
 else
  delta = ptr - rec->last_ptr;
 rec->period_pos += delta;
 rec->last_ptr = ptr;


 rec->timer.expires = jiffies + 1;
 add_timer(&rec->timer);


 if (rec->period_pos >= (int)rec->period_size) {
  rec->period_pos %= rec->period_size;
  spin_unlock(&rec->timer_lock);
  snd_pcm_period_elapsed(rec->substream);
  return;
 }
 spin_unlock(&rec->timer_lock);
}
