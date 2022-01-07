
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx_modem {int dummy; } ;


 int AC97 ;
 int VIAREG (struct via82xx_modem*,int ) ;
 int outl (unsigned int,int ) ;

__attribute__((used)) static inline void snd_via82xx_codec_xwrite(struct via82xx_modem *chip, unsigned int val)
{
 outl(val, VIAREG(chip, AC97));
}
