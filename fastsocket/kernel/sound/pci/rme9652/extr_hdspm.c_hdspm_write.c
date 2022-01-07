
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {scalar_t__ iobase; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void hdspm_write(struct hdspm * hdspm, unsigned int reg,
          unsigned int val)
{
 writel(val, hdspm->iobase + reg);
}
