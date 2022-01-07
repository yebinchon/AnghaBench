
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;





 unsigned short AC97_SC_SPSR_MASK ;
 int AC97_SPDIF ;
 scalar_t__ ARRAY_SIZE (unsigned short*) ;



 unsigned short snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,unsigned short,unsigned short) ;

__attribute__((used)) static unsigned int snd_ac97_determine_spdif_rates(struct snd_ac97 *ac97)
{
 unsigned int result = 0;
 int i;
 static unsigned short ctl_bits[] = {
  132, 133, 131
 };
 static unsigned int rate_bits[] = {
  129, 130, 128
 };

 for (i = 0; i < (int)ARRAY_SIZE(ctl_bits); i++) {
  snd_ac97_update_bits(ac97, AC97_SPDIF, AC97_SC_SPSR_MASK, ctl_bits[i]);
  if ((snd_ac97_read(ac97, AC97_SPDIF) & AC97_SC_SPSR_MASK) == ctl_bits[i])
   result |= rate_bits[i];
 }
 return result;
}
