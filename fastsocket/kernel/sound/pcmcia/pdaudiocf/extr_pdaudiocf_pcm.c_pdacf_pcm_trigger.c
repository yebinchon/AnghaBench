
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pdacf {int chip_status; TYPE_1__* ak4117; int reg_lock; scalar_t__ pcm_running; int pcm_tdone; int pcm_hwptr; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;
struct TYPE_2__ {int rcs0; } ;


 int AK4117_CHECK_NO_RATE ;
 int AK4117_CHECK_NO_STAT ;
 int AK4117_UNLCK ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 unsigned short PDAUDIOCF_RECORD ;
 int PDAUDIOCF_REG_SCR ;
 int PDAUDIOCF_STAT_IS_STALE ;






 unsigned short pdacf_reg_read (struct snd_pdacf*,int ) ;
 int pdacf_reg_write (struct snd_pdacf*,int ,unsigned short) ;
 int snd_ak4117_check_rate_and_errors (TYPE_1__*,int) ;
 struct snd_pdacf* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pdacf_pcm_trigger(struct snd_pcm_substream *subs, int cmd)
{
 struct snd_pdacf *chip = snd_pcm_substream_chip(subs);
 struct snd_pcm_runtime *runtime = subs->runtime;
 int inc, ret = 0, rate;
 unsigned short mask, val, tmp;

 if (chip->chip_status & PDAUDIOCF_STAT_IS_STALE)
  return -EBUSY;

 switch (cmd) {
 case 130:
  chip->pcm_hwptr = 0;
  chip->pcm_tdone = 0;

 case 132:
 case 131:
  mask = 0;
  val = PDAUDIOCF_RECORD;
  inc = 1;
  rate = snd_ak4117_check_rate_and_errors(chip->ak4117, AK4117_CHECK_NO_STAT|AK4117_CHECK_NO_RATE);
  break;
 case 129:
 case 133:
 case 128:
  mask = PDAUDIOCF_RECORD;
  val = 0;
  inc = -1;
  rate = 0;
  break;
 default:
  return -EINVAL;
 }
 spin_lock(&chip->reg_lock);
 chip->pcm_running += inc;
 tmp = pdacf_reg_read(chip, PDAUDIOCF_REG_SCR);
 if (chip->pcm_running) {
  if ((chip->ak4117->rcs0 & AK4117_UNLCK) || runtime->rate != rate) {
   chip->pcm_running -= inc;
   ret = -EIO;
   goto __end;
  }
 }
 tmp &= ~mask;
 tmp |= val;
 pdacf_reg_write(chip, PDAUDIOCF_REG_SCR, tmp);
      __end:
 spin_unlock(&chip->reg_lock);
 snd_ak4117_check_rate_and_errors(chip->ak4117, AK4117_CHECK_NO_RATE);
 return ret;
}
