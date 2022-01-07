
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int reg_lock; } ;


 int snd_sonicvibes_out1 (struct sonicvibes*,unsigned char,unsigned int) ;
 int snd_sonicvibes_pll (unsigned int,unsigned int*,unsigned int*,unsigned int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_sonicvibes_setpll(struct sonicvibes * sonic,
                                  unsigned char reg,
                                  unsigned int rate)
{
 unsigned long flags;
 unsigned int r, m, n;

 snd_sonicvibes_pll(rate, &r, &m, &n);
 if (sonic != ((void*)0)) {
  spin_lock_irqsave(&sonic->reg_lock, flags);
  snd_sonicvibes_out1(sonic, reg, m);
  snd_sonicvibes_out1(sonic, reg + 1, r | n);
  spin_unlock_irqrestore(&sonic->reg_lock, flags);
 }
}
