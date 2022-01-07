
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int open; } ;
typedef int irqreturn_t ;


 int SB_OPEN_PCM ;
 int snd_sb8dsp_interrupt (struct snd_sb*) ;
 int snd_sb8dsp_midi_interrupt (struct snd_sb*) ;

__attribute__((used)) static irqreturn_t snd_sb8_interrupt(int irq, void *dev_id)
{
 struct snd_sb *chip = dev_id;

 if (chip->open & SB_OPEN_PCM) {
  return snd_sb8dsp_interrupt(chip);
 } else {
  return snd_sb8dsp_midi_interrupt(chip);
 }
}
