
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_harmony {unsigned int iobase; } ;


 unsigned long __raw_readl (unsigned int) ;

__attribute__((used)) static inline unsigned long
harmony_read(struct snd_harmony *h, unsigned r)
{
 return __raw_readl(h->iobase + r);
}
