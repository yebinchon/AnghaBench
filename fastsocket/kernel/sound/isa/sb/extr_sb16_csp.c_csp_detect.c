
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int reg_lock; } ;


 int ENODEV ;
 int get_version (struct snd_sb*) ;
 unsigned char read_register (struct snd_sb*,int) ;
 int set_codec_parameter (struct snd_sb*,int,int) ;
 int set_mode_register (struct snd_sb*,int) ;
 int set_register (struct snd_sb*,int,unsigned char) ;
 int snd_sbdsp_reset (struct snd_sb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int csp_detect(struct snd_sb *chip, int *version)
{
 unsigned char csp_test1, csp_test2;
 unsigned long flags;
 int result = -ENODEV;

 spin_lock_irqsave(&chip->reg_lock, flags);

 set_codec_parameter(chip, 0x00, 0x00);
 set_mode_register(chip, 0xfc);

 csp_test1 = read_register(chip, 0x83);
 set_register(chip, 0x83, ~csp_test1);
 csp_test2 = read_register(chip, 0x83);
 if (csp_test2 != (csp_test1 ^ 0xff))
  goto __fail;

 set_register(chip, 0x83, csp_test1);
 csp_test2 = read_register(chip, 0x83);
 if (csp_test2 != csp_test1)
  goto __fail;

 set_mode_register(chip, 0x00);

 *version = get_version(chip);
 snd_sbdsp_reset(chip);
 if (*version >= 0x10 && *version <= 0x1f)
  result = 0;

      __fail:
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return result;
}
