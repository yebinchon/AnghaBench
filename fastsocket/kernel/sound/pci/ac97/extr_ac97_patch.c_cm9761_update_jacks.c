
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t dev_flags; } ;
struct snd_ac97 {TYPE_1__ spec; } ;


 int AC97_CM9761_MULTI_CHAN ;
 size_t is_clfe_on (struct snd_ac97*) ;
 size_t is_shared_clfeout (struct snd_ac97*) ;
 size_t is_shared_surrout (struct snd_ac97*) ;
 size_t is_surround_on (struct snd_ac97*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,unsigned short) ;

__attribute__((used)) static void cm9761_update_jacks(struct snd_ac97 *ac97)
{



 static unsigned short surr_on[3][2] = {
  { 0x0008, 0x0000 },
  { 0x0000, 0x0008 },
  { 0x0000, 0x0008 },
 };
 static unsigned short clfe_on[3][2] = {
  { 0x0000, 0x1000 },
  { 0x1000, 0x0000 },
  { 0x0000, 0x1000 },
 };
 static unsigned short surr_shared[3][2] = {
  { 0x0000, 0x0400 },
  { 0x0000, 0x0400 },
  { 0x0000, 0x0400 },
 };
 static unsigned short clfe_shared[3][2] = {
  { 0x2000, 0x0880 },
  { 0x0000, 0x2880 },
  { 0x2000, 0x0800 },
 };
 unsigned short val = 0;

 val |= surr_on[ac97->spec.dev_flags][is_surround_on(ac97)];
 val |= clfe_on[ac97->spec.dev_flags][is_clfe_on(ac97)];
 val |= surr_shared[ac97->spec.dev_flags][is_shared_surrout(ac97)];
 val |= clfe_shared[ac97->spec.dev_flags][is_shared_clfeout(ac97)];

 snd_ac97_update_bits(ac97, AC97_CM9761_MULTI_CHAN, 0x3c88, val);
}
