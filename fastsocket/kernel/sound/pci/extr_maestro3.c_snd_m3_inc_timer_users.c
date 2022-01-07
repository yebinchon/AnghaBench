
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_m3 {int timer_users; } ;


 int CLKRUN_GEN_ENABLE ;
 int HOST_INT_CTRL ;
 int KDATA_TIMER_COUNT_CURRENT ;
 int KDATA_TIMER_COUNT_RELOAD ;
 int MEMTYPE_INTERNAL_DATA ;
 int snd_m3_assp_write (struct snd_m3*,int ,int ,int) ;
 int snd_m3_inw (struct snd_m3*,int ) ;
 int snd_m3_outw (struct snd_m3*,int,int ) ;

__attribute__((used)) static void snd_m3_inc_timer_users(struct snd_m3 *chip)
{
 chip->timer_users++;
 if (chip->timer_users != 1)
  return;

 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     KDATA_TIMER_COUNT_RELOAD,
     240);

 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     KDATA_TIMER_COUNT_CURRENT,
     240);

 snd_m3_outw(chip,
      snd_m3_inw(chip, HOST_INT_CTRL) | CLKRUN_GEN_ENABLE,
      HOST_INT_CTRL);
}
