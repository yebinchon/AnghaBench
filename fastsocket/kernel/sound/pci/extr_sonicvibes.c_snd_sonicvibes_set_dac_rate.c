
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int reg_lock; } ;


 int SV_FULLRATE ;
 int SV_IREG_PCM_RATE_HIGH ;
 int SV_IREG_PCM_RATE_LOW ;
 int snd_sonicvibes_out1 (struct sonicvibes*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_sonicvibes_set_dac_rate(struct sonicvibes * sonic, unsigned int rate)
{
 unsigned int div;
 unsigned long flags;

 div = (rate * 65536 + SV_FULLRATE / 2) / SV_FULLRATE;
 if (div > 65535)
  div = 65535;
 spin_lock_irqsave(&sonic->reg_lock, flags);
 snd_sonicvibes_out1(sonic, SV_IREG_PCM_RATE_HIGH, div >> 8);
 snd_sonicvibes_out1(sonic, SV_IREG_PCM_RATE_LOW, div);
 spin_unlock_irqrestore(&sonic->reg_lock, flags);
}
