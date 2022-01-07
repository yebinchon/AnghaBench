
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {scalar_t__ iobase; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int rme9652_read(struct snd_rme9652 *rme9652, int reg)
{
 return readl(rme9652->iobase + reg);
}
