
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {int dummy; } ;


 unsigned char snd_ad1816a_in (struct snd_ad1816a*,unsigned char) ;
 int snd_ad1816a_out (struct snd_ad1816a*,unsigned char,unsigned char) ;

__attribute__((used)) static inline void snd_ad1816a_out_mask(struct snd_ad1816a *chip, unsigned char reg,
     unsigned char mask, unsigned char value)
{
 snd_ad1816a_out(chip, reg,
  (value & mask) | (snd_ad1816a_in(chip, reg) & ~mask));
}
