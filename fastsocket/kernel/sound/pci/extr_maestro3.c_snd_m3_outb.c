
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_m3 {scalar_t__ iobase; } ;


 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void snd_m3_outb(struct snd_m3 *chip, u8 value, unsigned long reg)
{
 outb(value, chip->iobase + reg);
}
