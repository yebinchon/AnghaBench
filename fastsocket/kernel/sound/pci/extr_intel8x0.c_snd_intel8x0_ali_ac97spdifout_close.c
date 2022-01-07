
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct intel8x0 {int reg_lock; TYPE_1__* ichd; } ;
struct TYPE_2__ {int * substream; } ;


 size_t ALID_AC97SPDIFOUT ;
 int ALI_INTERFACECR ;
 int ICHREG (int ) ;
 unsigned int ICH_ALI_IF_AC97SP ;
 unsigned int igetdword (struct intel8x0*,int ) ;
 int iputdword (struct intel8x0*,int ,unsigned int) ;
 struct intel8x0* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_intel8x0_ali_ac97spdifout_close(struct snd_pcm_substream *substream)
{
 struct intel8x0 *chip = snd_pcm_substream_chip(substream);
 unsigned int val;

 chip->ichd[ALID_AC97SPDIFOUT].substream = ((void*)0);
 spin_lock_irq(&chip->reg_lock);
 val = igetdword(chip, ICHREG(ALI_INTERFACECR));
 val &= ~ICH_ALI_IF_AC97SP;
 iputdword(chip, ICHREG(ALI_INTERFACECR), val);
 spin_unlock_irq(&chip->reg_lock);

 return 0;
}
