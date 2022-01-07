
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {int reg_lock; TYPE_1__* awacs; } ;
struct TYPE_2__ {int codec_stat; int codec_ctrl; } ;


 int in_le32 (int *) ;
 int out_le32 (int *,unsigned int) ;
 int snd_pmac_burgundy_busy_wait (struct snd_pmac*) ;
 int snd_pmac_burgundy_extend_wait (struct snd_pmac*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned
snd_pmac_burgundy_rcb(struct snd_pmac *chip, unsigned int addr)
{
 unsigned val = 0;
 unsigned long flags;

 spin_lock_irqsave(&chip->reg_lock, flags);

 out_le32(&chip->awacs->codec_ctrl, addr + 0x100000);
 snd_pmac_burgundy_busy_wait(chip);
 snd_pmac_burgundy_extend_wait(chip);
 val += (in_le32(&chip->awacs->codec_stat) >> 4) & 0xff;

 spin_unlock_irqrestore(&chip->reg_lock, flags);

 return val;
}
