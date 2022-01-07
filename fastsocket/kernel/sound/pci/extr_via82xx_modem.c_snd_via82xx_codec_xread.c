
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx_modem {int dummy; } ;


 int AC97 ;
 int VIAREG (struct via82xx_modem*,int ) ;
 unsigned int inl (int ) ;

__attribute__((used)) static inline unsigned int snd_via82xx_codec_xread(struct via82xx_modem *chip)
{
 return inl(VIAREG(chip, AC97));
}
