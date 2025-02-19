
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_akm4xxx {scalar_t__ type; int num_dacs; } ;


 scalar_t__ SND_AK4528 ;
 int snd_akm4xxx_get (struct snd_akm4xxx*,unsigned int,unsigned char) ;
 int snd_akm4xxx_write (struct snd_akm4xxx*,unsigned int,unsigned char,int) ;

__attribute__((used)) static void ak4524_reset(struct snd_akm4xxx *ak, int state)
{
 unsigned int chip;
 unsigned char reg, maxreg;

 if (ak->type == SND_AK4528)
  maxreg = 0x06;
 else
  maxreg = 0x08;
 for (chip = 0; chip < ak->num_dacs/2; chip++) {
  snd_akm4xxx_write(ak, chip, 0x01, state ? 0x00 : 0x03);
  if (state)
   continue;

  for (reg = 0x04; reg < maxreg; reg++)
   snd_akm4xxx_write(ak, chip, reg,
       snd_akm4xxx_get(ak, chip, reg));
 }
}
