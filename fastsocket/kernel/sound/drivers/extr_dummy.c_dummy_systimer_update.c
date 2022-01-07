
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_systimer_pcm {unsigned long base_time; unsigned long rate; scalar_t__ frac_pos; scalar_t__ frac_buffer_size; unsigned long frac_period_rest; scalar_t__ frac_period_size; int elapsed; } ;


 unsigned long jiffies ;

__attribute__((used)) static void dummy_systimer_update(struct dummy_systimer_pcm *dpcm)
{
 unsigned long delta;

 delta = jiffies - dpcm->base_time;
 if (!delta)
  return;
 dpcm->base_time += delta;
 delta *= dpcm->rate;
 dpcm->frac_pos += delta;
 while (dpcm->frac_pos >= dpcm->frac_buffer_size)
  dpcm->frac_pos -= dpcm->frac_buffer_size;
 while (dpcm->frac_period_rest <= delta) {
  dpcm->elapsed++;
  dpcm->frac_period_rest += dpcm->frac_period_size;
 }
 dpcm->frac_period_rest -= delta;
}
