
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_TICK_RATE ;
 int pas_lock ;
 int pas_read (int) ;
 int pas_write (int,int) ;
 int pcm_channels ;
 int pcm_filter ;
 int pcm_speed ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pcm_set_speed(int arg)
{
 int foo, tmp;
 unsigned long flags;

 if (arg == 0)
  return pcm_speed;

 if (arg > 44100)
  arg = 44100;
 if (arg < 5000)
  arg = 5000;

 if (pcm_channels & 2)
 {
  foo = ((CLOCK_TICK_RATE / 2) + (arg / 2)) / arg;
  arg = ((CLOCK_TICK_RATE / 2) + (foo / 2)) / foo;
 }
 else
 {
  foo = (CLOCK_TICK_RATE + (arg / 2)) / arg;
  arg = (CLOCK_TICK_RATE + (foo / 2)) / foo;
 }

 pcm_speed = arg;

 tmp = pas_read(0x0B8A);
 tmp &= 0xe0;
 if (pcm_speed >= 2 * 17897)
  tmp |= 0x01;
 else if (pcm_speed >= 2 * 15909)
  tmp |= 0x02;
 else if (pcm_speed >= 2 * 11931)
  tmp |= 0x09;
 else if (pcm_speed >= 2 * 8948)
  tmp |= 0x11;
 else if (pcm_speed >= 2 * 5965)
  tmp |= 0x19;
 else if (pcm_speed >= 2 * 2982)
  tmp |= 0x04;
 pcm_filter = tmp;


 spin_lock_irqsave(&pas_lock, flags);

 pas_write(tmp & ~(0x40 | 0x80), 0x0B8A);
 pas_write(0x00 | 0x30 | 0x04, 0x138B);
 pas_write(foo & 0xff, 0x1388);
 pas_write((foo >> 8) & 0xff, 0x1388);
 pas_write(tmp, 0x0B8A);

 spin_unlock_irqrestore(&pas_lock, flags);

 return pcm_speed;
}
