
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {scalar_t__ port; } ;


 scalar_t__ WC ;
 int inl (scalar_t__) ;

void snd_emu10k1_wait(struct snd_emu10k1 *emu, unsigned int wait)
{
 volatile unsigned count;
 unsigned int newtime = 0, curtime;

 curtime = inl(emu->port + WC) >> 6;
 while (wait-- > 0) {
  count = 0;
  while (count++ < 16384) {
   newtime = inl(emu->port + WC) >> 6;
   if (newtime != curtime)
    break;
  }
  if (count > 16384)
   break;
  curtime = newtime;
 }
}
