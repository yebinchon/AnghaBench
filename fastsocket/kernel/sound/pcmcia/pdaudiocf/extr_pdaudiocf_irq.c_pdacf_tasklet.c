
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pdacf {int chip_status; unsigned long port; int pcm_frame; int pcm_hwptr; int pcm_size; int pcm_tdone; int pcm_period; int reg_lock; TYPE_1__* pcm_substream; } ;
struct TYPE_3__ {int * runtime; } ;


 unsigned long PDAUDIOCF_REG_MD ;
 unsigned long PDAUDIOCF_REG_RDP ;
 unsigned long PDAUDIOCF_REG_WDP ;
 int PDAUDIOCF_STAT_IS_CONFIGURED ;
 int PDAUDIOCF_STAT_IS_STALE ;
 int inw (unsigned long) ;
 int pdacf_transfer (struct snd_pdacf*,int,int) ;
 int snd_pcm_period_elapsed (TYPE_1__*) ;
 int snd_pcm_running (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pdacf_tasklet(unsigned long private_data)
{
 struct snd_pdacf *chip = (struct snd_pdacf *) private_data;
 int size, off, cont, rdp, wdp;

 if ((chip->chip_status & (PDAUDIOCF_STAT_IS_STALE|PDAUDIOCF_STAT_IS_CONFIGURED)) != PDAUDIOCF_STAT_IS_CONFIGURED)
  return;

 if (chip->pcm_substream == ((void*)0) || chip->pcm_substream->runtime == ((void*)0) || !snd_pcm_running(chip->pcm_substream))
  return;

 rdp = inw(chip->port + PDAUDIOCF_REG_RDP);
 wdp = inw(chip->port + PDAUDIOCF_REG_WDP);

 size = wdp - rdp;
 if (size < 0)
  size += 0x10000;
 if (size == 0)
  size = 0x10000;
 size /= chip->pcm_frame;
 if (size > 64)
  size -= 32;
 off = chip->pcm_hwptr + chip->pcm_tdone;
 off %= chip->pcm_size;
 chip->pcm_tdone += size;
 while (size > 0) {
  cont = chip->pcm_size - off;
  if (cont > size)
   cont = size;
  pdacf_transfer(chip, cont, off);
  off += cont;
  off %= chip->pcm_size;
  size -= cont;
 }

 spin_lock(&chip->reg_lock);
 while (chip->pcm_tdone >= chip->pcm_period) {
  chip->pcm_hwptr += chip->pcm_period;
  chip->pcm_hwptr %= chip->pcm_size;
  chip->pcm_tdone -= chip->pcm_period;
  spin_unlock(&chip->reg_lock);
  snd_pcm_period_elapsed(chip->pcm_substream);
  spin_lock(&chip->reg_lock);
 }
 spin_unlock(&chip->reg_lock);

}
