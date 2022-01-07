
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int reg_lock; } ;


 int BA1_PPI ;
 int BA1_PSRC ;
 unsigned int GOF_PER_SEC ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs46xx_set_play_sample_rate(struct snd_cs46xx *chip, unsigned int rate)
{
 unsigned long flags;
 unsigned int tmp1, tmp2;
 unsigned int phiIncr;
 unsigned int correctionPerGOF, correctionPerSec;
 tmp1 = rate << 16;
 phiIncr = tmp1 / 48000;
 tmp1 -= phiIncr * 48000;
 tmp1 <<= 10;
 phiIncr <<= 10;
 tmp2 = tmp1 / 48000;
 phiIncr += tmp2;
 tmp1 -= tmp2 * 48000;
 correctionPerGOF = tmp1 / GOF_PER_SEC;
 tmp1 -= correctionPerGOF * GOF_PER_SEC;
 correctionPerSec = tmp1;




 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_cs46xx_poke(chip, BA1_PSRC,
   ((correctionPerSec << 16) & 0xFFFF0000) | (correctionPerGOF & 0xFFFF));
 snd_cs46xx_poke(chip, BA1_PPI, phiIncr);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
