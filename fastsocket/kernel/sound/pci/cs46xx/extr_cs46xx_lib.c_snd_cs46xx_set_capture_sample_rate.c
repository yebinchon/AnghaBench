
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int reg_lock; } ;


 scalar_t__ BA1_CCI ;
 scalar_t__ BA1_CCST ;
 scalar_t__ BA1_CD ;
 scalar_t__ BA1_CFG1 ;
 scalar_t__ BA1_CFG2 ;
 scalar_t__ BA1_CPI ;
 scalar_t__ BA1_CSPB ;
 scalar_t__ BA1_CSRC ;
 unsigned int BA1_VARIDEC_BUF_1 ;
 unsigned int GOF_PER_SEC ;
 int snd_cs46xx_poke (struct snd_cs46xx*,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs46xx_set_capture_sample_rate(struct snd_cs46xx *chip, unsigned int rate)
{
 unsigned long flags;
 unsigned int phiIncr, coeffIncr, tmp1, tmp2;
 unsigned int correctionPerGOF, correctionPerSec, initialDelay;
 unsigned int frameGroupLength, cnt;





 if ((rate * 9) < 48000)
  rate = 48000 / 9;





 if (rate > 48000)
  rate = 48000;
 tmp1 = rate << 16;
 coeffIncr = tmp1 / 48000;
 tmp1 -= coeffIncr * 48000;
 tmp1 <<= 7;
 coeffIncr <<= 7;
 coeffIncr += tmp1 / 48000;
 coeffIncr ^= 0xFFFFFFFF;
 coeffIncr++;
 tmp1 = 48000 << 16;
 phiIncr = tmp1 / rate;
 tmp1 -= phiIncr * rate;
 tmp1 <<= 10;
 phiIncr <<= 10;
 tmp2 = tmp1 / rate;
 phiIncr += tmp2;
 tmp1 -= tmp2 * rate;
 correctionPerGOF = tmp1 / GOF_PER_SEC;
 tmp1 -= correctionPerGOF * GOF_PER_SEC;
 correctionPerSec = tmp1;
 initialDelay = ((48000 * 24) + rate - 1) / rate;




 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_cs46xx_poke(chip, BA1_CSRC,
  ((correctionPerSec << 16) & 0xFFFF0000) | (correctionPerGOF & 0xFFFF));
 snd_cs46xx_poke(chip, BA1_CCI, coeffIncr);
 snd_cs46xx_poke(chip, BA1_CD,
  (((BA1_VARIDEC_BUF_1 + (initialDelay << 2)) << 16) & 0xFFFF0000) | 0x80);
 snd_cs46xx_poke(chip, BA1_CPI, phiIncr);
 spin_unlock_irqrestore(&chip->reg_lock, flags);






 frameGroupLength = 1;
 for (cnt = 2; cnt <= 64; cnt *= 2) {
  if (((rate / cnt) * cnt) != rate)
   frameGroupLength *= 2;
 }
 if (((rate / 3) * 3) != rate) {
  frameGroupLength *= 3;
 }
 for (cnt = 5; cnt <= 125; cnt *= 5) {
  if (((rate / cnt) * cnt) != rate)
   frameGroupLength *= 5;
        }




 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_cs46xx_poke(chip, BA1_CFG1, frameGroupLength);
 snd_cs46xx_poke(chip, BA1_CFG2, (0x00800000 | frameGroupLength));
 snd_cs46xx_poke(chip, BA1_CCST, 0x0000FFFF);
 snd_cs46xx_poke(chip, BA1_CSPB, ((65536 * rate) / 24000));
 snd_cs46xx_poke(chip, (BA1_CSPB + 4), 0x0000FFFF);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
