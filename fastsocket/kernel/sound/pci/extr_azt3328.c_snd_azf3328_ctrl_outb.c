
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_azf3328 {unsigned int ctrl_io; } ;


 int outb (int ,unsigned int) ;

__attribute__((used)) static inline void
snd_azf3328_ctrl_outb(const struct snd_azf3328 *chip, unsigned reg, u8 value)
{
 outb(value, chip->ctrl_io + reg);
}
