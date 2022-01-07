
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;



__attribute__((used)) static int snd_emu10k1_timer_precise_resolution(struct snd_timer *timer,
            unsigned long *num, unsigned long *den)
{
 *num = 1;
 *den = 48000;
 return 0;
}
