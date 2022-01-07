
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pdacf {scalar_t__ port; } ;


 unsigned short inw (scalar_t__) ;

__attribute__((used)) static inline unsigned short pdacf_reg_read(struct snd_pdacf *chip, unsigned char reg)
{
 return inw(chip->port + reg);
}
