
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {struct nm256* private_data; } ;
struct nm256 {unsigned short* ac97_regs; } ;


 int nm256_ac97_idx (unsigned short) ;

__attribute__((used)) static unsigned short
snd_nm256_ac97_read(struct snd_ac97 *ac97, unsigned short reg)
{
 struct nm256 *chip = ac97->private_data;
 int idx = nm256_ac97_idx(reg);

 if (idx < 0)
  return 0;
 return chip->ac97_regs[idx];
}
