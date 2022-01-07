
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int reg_lock; } ;


 int SV_IREG_ADC_ALT_RATE ;
 int SV_IREG_ADC_CLOCK ;
 int SV_IREG_ADC_PLL ;
 int snd_sonicvibes_out1 (struct sonicvibes*,int ,unsigned char) ;
 int snd_sonicvibes_setpll (struct sonicvibes*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_sonicvibes_set_adc_rate(struct sonicvibes * sonic, unsigned int rate)
{
 unsigned long flags;
 unsigned int div;
 unsigned char clock;

 div = 48000 / rate;
 if (div > 8)
  div = 8;
 if ((48000 / div) == rate) {
  clock = 0x10;
 } else {
  clock = 0x00;
  snd_sonicvibes_setpll(sonic, SV_IREG_ADC_PLL, rate);
 }
 spin_lock_irqsave(&sonic->reg_lock, flags);
 snd_sonicvibes_out1(sonic, SV_IREG_ADC_ALT_RATE, (div - 1) << 4);
 snd_sonicvibes_out1(sonic, SV_IREG_ADC_CLOCK, clock);
 spin_unlock_irqrestore(&sonic->reg_lock, flags);
}
