
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_ad1889 {unsigned int iobase; } ;


 int readw (unsigned int) ;

__attribute__((used)) static inline u16
ad1889_readw(struct snd_ad1889 *chip, unsigned reg)
{
 return readw(chip->iobase + reg);
}
