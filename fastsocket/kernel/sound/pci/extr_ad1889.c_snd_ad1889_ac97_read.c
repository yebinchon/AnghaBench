
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_ad1889 {int dummy; } ;
struct snd_ac97 {struct snd_ad1889* private_data; } ;


 scalar_t__ AD_AC97_BASE ;
 int ad1889_readw (struct snd_ad1889*,scalar_t__) ;

__attribute__((used)) static u16
snd_ad1889_ac97_read(struct snd_ac97 *ac97, unsigned short reg)
{
 struct snd_ad1889 *chip = ac97->private_data;
 return ad1889_readw(chip, AD_AC97_BASE + reg);
}
