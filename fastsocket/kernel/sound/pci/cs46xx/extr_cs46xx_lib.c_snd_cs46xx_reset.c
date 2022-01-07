
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int dummy; } ;


 int BA1_DREG ;
 int BA1_FRMT ;
 int BA1_SPCR ;
 int BA1_TWPR ;
 int DREG_REGID_TRAP_SELECT ;
 int SPCR_DRQEN ;
 int SPCR_RSTSP ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int ,int) ;

__attribute__((used)) static void snd_cs46xx_reset(struct snd_cs46xx *chip)
{
 int idx;




 snd_cs46xx_poke(chip, BA1_SPCR, SPCR_RSTSP);




 snd_cs46xx_poke(chip, BA1_SPCR, SPCR_DRQEN);




 for (idx = 0; idx < 8; idx++) {
  snd_cs46xx_poke(chip, BA1_DREG, DREG_REGID_TRAP_SELECT + idx);
  snd_cs46xx_poke(chip, BA1_TWPR, 0xFFFF);
 }
 snd_cs46xx_poke(chip, BA1_DREG, 0);




 snd_cs46xx_poke(chip, BA1_FRMT, 0xadf);
}
