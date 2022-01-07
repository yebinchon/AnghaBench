
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_ad1889 {unsigned int iobase; } ;


 int readl (unsigned int) ;

__attribute__((used)) static inline u32
ad1889_readl(struct snd_ad1889 *chip, unsigned reg)
{
 return readl(chip->iobase + reg);
}
