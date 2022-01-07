
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {int dummy; } ;


 int AD1816A_REG (unsigned char) ;
 unsigned char inb (int ) ;
 int snd_ad1816a_busy_wait (struct snd_ad1816a*) ;

__attribute__((used)) static inline unsigned char snd_ad1816a_in(struct snd_ad1816a *chip, unsigned char reg)
{
 snd_ad1816a_busy_wait(chip);
 return inb(AD1816A_REG(reg));
}
